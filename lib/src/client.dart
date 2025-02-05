import 'dart:async';
import 'dart:collection';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:doki_websocket_client/src/payload/base_payload.dart';
import 'package:doki_websocket_client/src/payload/instant-messaging/chat-message/chat_message.dart';
import 'package:doki_websocket_client/src/payload/instant-messaging/delete-message/delete_message.dart';
import 'package:doki_websocket_client/src/payload/instant-messaging/edit-message/edit_message.dart';
import 'package:doki_websocket_client/src/payload/instant-messaging/typing-status/typing_status.dart';
import 'package:doki_websocket_client/src/payload/payload_type.dart';
import 'package:doki_websocket_client/src/payload/user-profile-actions/user-create-root-node/user_create_root_node.dart';
import 'package:doki_websocket_client/src/payload/user-profile-actions/user-update-profile/user_update_profile.dart';
import 'package:doki_websocket_client/src/payload/user-related-actions/user-accept-friend-request/user_accept_friend_request.dart';
import 'package:doki_websocket_client/src/payload/user-related-actions/user-removes-friend-relation/user_removes_friend_relation.dart';
import 'package:doki_websocket_client/src/payload/user-related-actions/user-send-friend-request/user_send_friend_request.dart';
import 'package:doki_websocket_client/src/utils/generate_string.dart';
import 'package:web_socket_channel/io.dart';
import 'package:web_socket_channel/status.dart' as status;
import 'package:web_socket_channel/web_socket_channel.dart';

/// basic typedef similar to [https://api.flutter.dev/flutter/foundation/foundation-library.html]
typedef AsyncValueGetter<T> = Future<T> Function();
typedef ValueSetter<T> = Function(T message);
typedef VoidCallback = Function();
typedef ValueGetter<T> = T Function();
typedef PayloadHandler = Function;

/// amount of retries before giving up reconnection
/// this is based on exponential backoff strategy
/// eg. time before retrying: 1s, 2s, 4s, 8s, 16s... (2^limit)
const int limit = 6;

class Client {
  Client({
    required this.url,
    required this.getToken,
    required this.onChatMessageReceived,
    required this.onTypingStatusReceived,
    required this.onEditMessageReceived,
    required this.onDeleteMessageReceived,
    required this.onReconnectSuccess,
    required this.onConnectionClosure,
    required this.onUserSendFriendRequest,
    required this.onUserAcceptFriendRequest,
    required this.onUserRemovesFriendRelation,
    required this.onUserCreateRootNode,
    required this.onUserUpdateProfile,
    required this.payloadHandler,
  }) : _resource = generateResource();

  /// payloadHandler contains all the handlers that are required by the client
  final Map<PayloadType, PayloadHandler> payloadHandler;

  /// url is the websocket connection uri
  final Uri url;

  /// getToken gives the token that is used by your websocket server
  /// token can either be accessToken or idToken
  final AsyncValueGetter<String> getToken;

  /// resource part to identify each user session
  /// even if they are using same account but different device
  final String _resource;

  /// onChatMessageReceived is invoked when new [ChatMessage] is received
  /// [ChatMessage] can either be by same user with different resource or from another user
  @Deprecated("use [payloadHandler] method to send callbacks")
  final ValueSetter<ChatMessage> onChatMessageReceived;

  /// onTypingStatusReceived is invoked when [TypingStatus] is received
  /// [TypingStatus] is only send by different user than the current
  /// in UI just show the typing status for around 5seconds and than remove
  /// if user is still typing it will send [TypingStatus] every 4 seconds (something lower than view timeout)
  @Deprecated("use [payloadHandler] method to send callbacks")
  final ValueSetter<TypingStatus> onTypingStatusReceived;

  /// onEditMessageReceived is invoked when [EditMessage] is received
  /// [EditMessage] can either be by same user with different resource or from another user
  /// in client give priority to updating the message
  @Deprecated("use [payloadHandler] method to send callbacks")
  final ValueSetter<EditMessage> onEditMessageReceived;

  /// onDeleteMessageReceived is invoked when [DeleteMessage] is received
  /// [DeleteMessage] can either be only by same user with different resource when using delete for me
  /// this will be by different user when the user wants to remove the send message
  /// in client give priority to deleting message
  @Deprecated("use [payloadHandler] method to send callbacks")
  final ValueSetter<DeleteMessage> onDeleteMessageReceived;

  /// onReconnectSuccess is invoked when user is successfully reconnected to the websocket server
  /// this method should be used to refetch the inbox and syncing of the archives after disconnect
  final VoidCallback onReconnectSuccess;

  /// onConnectionClosure is invoked with the retry function
  /// client is suppose to check if application is in foreground and have internet connectivity
  /// and then call the retry callback
  final ValueSetter<VoidCallback> onConnectionClosure;

  /// onUserSendFriendRequest is invoked when someone or some resource of the same user
  /// sends the request to some user
  @Deprecated("use [payloadHandler] method to send callbacks")
  final ValueSetter<UserSendFriendRequest> onUserSendFriendRequest;

  /// onUserAcceptFriendRequest is invoked when someone or some resource of the same user
  /// accepts the incoming friend request
  @Deprecated("use [payloadHandler] method to send callbacks")
  final ValueSetter<UserAcceptFriendRequest> onUserAcceptFriendRequest;

  @Deprecated("use [payloadHandler] method to send callbacks")
  final ValueSetter<UserRemovesFriendRelation> onUserRemovesFriendRelation;

  /// onUserUpdateProfile is invoked when user edits his her profile
  /// this will be used to sync the same user across different devices and when subscribed to the user
  @Deprecated("use [payloadHandler] method to send callbacks")
  final ValueSetter<UserUpdateProfile> onUserUpdateProfile;

  /// onUserCreateRootNode is called when remote user create new node like post, discussion
  /// this will be used for syncing across same user but different device and also when particular user subscribes the user profile
  @Deprecated("use [payloadHandler] method to send callbacks")
  final ValueSetter<UserCreateRootNode> onUserCreateRootNode;

  /// socketChannel holds the underlying [IOWebSocketChannel]
  /// provided by the web_socket_channel package
  IOWebSocketChannel? _socketChannel;

  /// isActive is used by client to check
  /// if underlying [WebSocket] connection is alive
  bool get isActive => _socketChannel != null;

  bool get isNotActive => _socketChannel == null;

  /// isManuallyClosed is to prevent retrying of connection after [disconnect] is called
  /// [disconnect] should be called when exiting the app to free up any used resources
  bool _isManuallyClosed = false;

  /// tries is to manage number of reconnect request to server after termination of the connection
  int _tries = -1;

  /// undelivered contains all the messages thar are not delivered
  /// when there is no connection, after successful connection this will be
  /// used to retry sending these messages
  /// messages are only stored for the particular session of application
  /// if application is terminated than queue will also be cleared
  Queue<BasePayload> undelivered = Queue();

  /// connect is used to connect to the websocket server
  /// if an existing connection exists it does nothing
  Future<void> connect() async {
    if (_socketChannel != null) return;

    String jwtToken = await getToken();
    Map<String, dynamic> headers = {
      "Authorization": "Bearer $jwtToken",
    };
    Uri connectionUrl = url.replace(queryParameters: {
      "resource": _resource,
    });

    final websocketChannel = IOWebSocketChannel.connect(
      connectionUrl,
      headers: headers,
      pingInterval: Duration(
        seconds: 30,
      ),
      connectTimeout: Duration(
        seconds: 30,
      ),
    );

    await websocketChannel.ready;
    _handleUndelivered();
    if (_tries != -1) {
      onReconnectSuccess();
    }
    _tries = -1;
    _socketChannel = websocketChannel;

    _socketChannel!.stream.listen(
      _handleServerPayload,
      onError: (error) {
        _handleConnectionClosure();
      },
      onDone: _handleConnectionClosure,
    );
  }

  /// handleConnectionClosure is called by [IOWebSocketChannel] stream
  /// when onError or onDone is called
  void _handleConnectionClosure() {
    if (_isManuallyClosed) return;
    if (_tries == -1) _tries = 0;
    _socketChannel = null;

    onConnectionClosure(_handleLostConnection);
  }

  /// handleLostConnection allows to retry connection to websocket server
  void _handleLostConnection() {
    if (_tries == -1) return;

    Timer(
      Duration(seconds: 1 << _tries),
      () async {
        try {
          _tries++;
          await connect();
        } on WebSocketChannelException catch (_) {
          if (_tries <= limit) {
            _handleLostConnection();
          } else {
            // allow client to try reconnecting if app is in foreground with active internet connection
            _tries = 0;
            onConnectionClosure(_handleLostConnection);
          }
        } catch (e) {
          return;
        }
      },
    );
  }

  /// handleServerPayload decodes the incoming message and
  /// calls the respective callback for the payload
  /// for now this is using json, later will upgrade to protobuf
  void _handleServerPayload(dynamic json) {
    // decode payload to map
    final payloadMap = jsonDecode(json) as Map<String, dynamic>;
    PayloadType payloadType = PayloadType.fromValue(payloadMap["type"]);
    // PayloadType? type = payloadTypeMap[payloadMap["type"]];
    if (payloadType == PayloadType.unknown) {
      log("Encountered unknown payload type");
      return;
    }

    if (payloadType.decoder != null) {
      // valid decoder
      var payload = payloadType.decoder!(payloadMap);
      if (payloadHandler.containsKey(payloadType)) {
        payloadHandler[payloadType]!(payload);
      }
    }

    return;

    switch (payloadType) {
      case PayloadType.chatMessage:
        final message = ChatMessage.fromJson(payloadMap);
        onChatMessageReceived(message);
      case PayloadType.typingStatus:
        final message = TypingStatus.fromJson(payloadMap);
        onTypingStatusReceived(message);
      case PayloadType.editMessage:
        final message = EditMessage.fromJson(payloadMap);
        onEditMessageReceived(message);
      case PayloadType.deleteMessage:
        final message = DeleteMessage.fromJson(payloadMap);
        onDeleteMessageReceived(message);
      case PayloadType.userSendFriendRequest:
        final request = UserSendFriendRequest.fromJson(payloadMap);
        onUserSendFriendRequest(request);
      case PayloadType.userAcceptFriendRequest:
        final request = UserAcceptFriendRequest.fromJson(payloadMap);
        onUserAcceptFriendRequest(request);
      case PayloadType.userRemovesFriendRelation:
        final relation = UserRemovesFriendRelation.fromJson(payloadMap);
        onUserRemovesFriendRelation(relation);
      case PayloadType.userUpdateProfile:
        final payload = UserUpdateProfile.fromJson(payloadMap);
        onUserUpdateProfile(payload);
      case PayloadType.userCreateRootNode:
        final payload = UserCreateRootNode.fromJson(payloadMap);
        onUserCreateRootNode(payload);
      case PayloadType.unknown:
    }
  }

  /// handleUndelivered retries sending all the failed messages after connection
  /// is back
  void _handleUndelivered() {
    while (undelivered.isNotEmpty) {
      BasePayload payload = undelivered.first;
      undelivered.removeFirst();

      _sendPayload(payload);
    }
  }

  /// disconnect closes the underlying websocket connection to the server
  /// with [status.normalClosure]
  void disconnect() {
    if (isNotActive) return;

    _isManuallyClosed = true;
    _socketChannel!.sink.close(status.normalClosure);
    _socketChannel = null;
  }

  void _sendPayload(BasePayload payload) {
    _socketChannel?.sink.add(jsonEncode(payload.toJson()));
  }

  bool sendPayload(BasePayload payload) {
    if (isNotActive) {
      return false;
    }

    _sendPayload(payload);
    return true;
  }

  /// sendMessage method is used to send message to particular user
  @Deprecated("user [sendPayload] method to send message")
  bool sendMessage(ChatMessage message) {
    if (isNotActive) {
      undelivered.add(message);
      return false;
    }

    _sendPayload(message);
    return true;
  }

  /// sendTypingStatus method is used to send typing status to particular user
  @Deprecated("use sendPayload method to send message")
  bool sendTypingStatus(TypingStatus status) {
    if (isNotActive) {
      return false;
    }

    _sendPayload(status);
    return true;
  }

  /// editMessage method is used to edit user's own message
  @Deprecated("use sendPayload method to send message")
  bool editMessage(EditMessage message) {
    if (isNotActive) {
      // undelivered.add(message);
      return false;
    }

    _sendPayload(message);
    return true;
  }

  /// deleteMessage is used to delete any message for them
  /// additionally it also allows to delete message for everyone that is our own message
  @Deprecated("use sendPayload method to send message")
  bool deleteMessage(DeleteMessage message) {
    if (isNotActive) {
      // undelivered.add(message);
      return false;
    }
    _sendPayload(message);
    return true;
  }

  @Deprecated("use sendPayload method to send message")
  bool userSendFriendRequest(UserSendFriendRequest request) {
    if (isNotActive) {
      return false;
    }

    _sendPayload(request);
    return true;
  }

  @Deprecated("use sendPayload method to send message")
  bool userAcceptFriendRequest(UserAcceptFriendRequest request) {
    if (isNotActive) {
      return false;
    }

    _sendPayload(request);
    return true;
  }

  @Deprecated("use sendPayload method to send message")
  bool userRemovesFriendRelation(UserRemovesFriendRelation relation) {
    if (isNotActive) {
      return false;
    }

    _sendPayload(relation);
    return true;
  }

  @Deprecated("use sendPayload method to send message")
  bool userUpdateProfile(UserUpdateProfile payload) {
    if (isNotActive) {
      return false;
    }

    _sendPayload(payload);
    return true;
  }

  @Deprecated("use sendPayload method to send message")
  bool userCreateRootNode(UserCreateRootNode payload) {
    if (isNotActive) {
      return false;
    }

    _sendPayload(payload);
    return true;
  }
}
