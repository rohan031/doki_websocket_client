// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'chat_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ChatMessage _$ChatMessageFromJson(Map<String, dynamic> json) {
  return _ChatMessage.fromJson(json);
}

/// @nodoc
mixin _$ChatMessage {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  MessageSubject get subject => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  bool get forwarded => throw _privateConstructorUsedError;
  String? get replyOn => throw _privateConstructorUsedError;
  @UTCDateTimeConverter()
  DateTime get sendAt => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this ChatMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChatMessageCopyWith<ChatMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChatMessageCopyWith<$Res> {
  factory $ChatMessageCopyWith(
          ChatMessage value, $Res Function(ChatMessage) then) =
      _$ChatMessageCopyWithImpl<$Res, ChatMessage>;
  @useResult
  $Res call(
      {String from,
      String to,
      String id,
      MessageSubject subject,
      String body,
      bool forwarded,
      String? replyOn,
      @UTCDateTimeConverter() DateTime sendAt,
      PayloadType type});
}

/// @nodoc
class _$ChatMessageCopyWithImpl<$Res, $Val extends ChatMessage>
    implements $ChatMessageCopyWith<$Res> {
  _$ChatMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? id = null,
    Object? subject = null,
    Object? body = null,
    Object? forwarded = null,
    Object? replyOn = freezed,
    Object? sendAt = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as MessageSubject,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      forwarded: null == forwarded
          ? _value.forwarded
          : forwarded // ignore: cast_nullable_to_non_nullable
              as bool,
      replyOn: freezed == replyOn
          ? _value.replyOn
          : replyOn // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAt: null == sendAt
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChatMessageImplCopyWith<$Res>
    implements $ChatMessageCopyWith<$Res> {
  factory _$$ChatMessageImplCopyWith(
          _$ChatMessageImpl value, $Res Function(_$ChatMessageImpl) then) =
      __$$ChatMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String from,
      String to,
      String id,
      MessageSubject subject,
      String body,
      bool forwarded,
      String? replyOn,
      @UTCDateTimeConverter() DateTime sendAt,
      PayloadType type});
}

/// @nodoc
class __$$ChatMessageImplCopyWithImpl<$Res>
    extends _$ChatMessageCopyWithImpl<$Res, _$ChatMessageImpl>
    implements _$$ChatMessageImplCopyWith<$Res> {
  __$$ChatMessageImplCopyWithImpl(
      _$ChatMessageImpl _value, $Res Function(_$ChatMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? id = null,
    Object? subject = null,
    Object? body = null,
    Object? forwarded = null,
    Object? replyOn = freezed,
    Object? sendAt = null,
    Object? type = null,
  }) {
    return _then(_$ChatMessageImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as MessageSubject,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      forwarded: null == forwarded
          ? _value.forwarded
          : forwarded // ignore: cast_nullable_to_non_nullable
              as bool,
      replyOn: freezed == replyOn
          ? _value.replyOn
          : replyOn // ignore: cast_nullable_to_non_nullable
              as String?,
      sendAt: null == sendAt
          ? _value.sendAt
          : sendAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$ChatMessageImpl implements _ChatMessage {
  const _$ChatMessageImpl(
      {required this.from,
      required this.to,
      required this.id,
      required this.subject,
      required this.body,
      this.forwarded = false,
      this.replyOn,
      @UTCDateTimeConverter() required this.sendAt,
      this.type = PayloadType.chatMessage});

  factory _$ChatMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChatMessageImplFromJson(json);

  @override
  final String from;
  @override
  final String to;
  @override
  final String id;
  @override
  final MessageSubject subject;
  @override
  final String body;
  @override
  @JsonKey()
  final bool forwarded;
  @override
  final String? replyOn;
  @override
  @UTCDateTimeConverter()
  final DateTime sendAt;
  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'ChatMessage(from: $from, to: $to, id: $id, subject: $subject, body: $body, forwarded: $forwarded, replyOn: $replyOn, sendAt: $sendAt, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChatMessageImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.forwarded, forwarded) ||
                other.forwarded == forwarded) &&
            (identical(other.replyOn, replyOn) || other.replyOn == replyOn) &&
            (identical(other.sendAt, sendAt) || other.sendAt == sendAt) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, id, subject, body,
      forwarded, replyOn, sendAt, type);

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      __$$ChatMessageImplCopyWithImpl<_$ChatMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChatMessageImplToJson(
      this,
    );
  }
}

abstract class _ChatMessage implements ChatMessage {
  const factory _ChatMessage(
      {required final String from,
      required final String to,
      required final String id,
      required final MessageSubject subject,
      required final String body,
      final bool forwarded,
      final String? replyOn,
      @UTCDateTimeConverter() required final DateTime sendAt,
      final PayloadType type}) = _$ChatMessageImpl;

  factory _ChatMessage.fromJson(Map<String, dynamic> json) =
      _$ChatMessageImpl.fromJson;

  @override
  String get from;
  @override
  String get to;
  @override
  String get id;
  @override
  MessageSubject get subject;
  @override
  String get body;
  @override
  bool get forwarded;
  @override
  String? get replyOn;
  @override
  @UTCDateTimeConverter()
  DateTime get sendAt;
  @override
  PayloadType get type;

  /// Create a copy of ChatMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChatMessageImplCopyWith<_$ChatMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
