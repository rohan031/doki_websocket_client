// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DeleteMessage _$DeleteMessageFromJson(Map<String, dynamic> json) {
  return _DeleteMessage.fromJson(json);
}

/// @nodoc
mixin _$DeleteMessage {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  List<String> get id => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this DeleteMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DeleteMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DeleteMessageCopyWith<DeleteMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteMessageCopyWith<$Res> {
  factory $DeleteMessageCopyWith(
          DeleteMessage value, $Res Function(DeleteMessage) then) =
      _$DeleteMessageCopyWithImpl<$Res, DeleteMessage>;
  @useResult
  $Res call({String from, String to, List<String> id, PayloadType type});
}

/// @nodoc
class _$DeleteMessageCopyWithImpl<$Res, $Val extends DeleteMessage>
    implements $DeleteMessageCopyWith<$Res> {
  _$DeleteMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DeleteMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? id = null,
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
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DeleteMessageImplCopyWith<$Res>
    implements $DeleteMessageCopyWith<$Res> {
  factory _$$DeleteMessageImplCopyWith(
          _$DeleteMessageImpl value, $Res Function(_$DeleteMessageImpl) then) =
      __$$DeleteMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String to, List<String> id, PayloadType type});
}

/// @nodoc
class __$$DeleteMessageImplCopyWithImpl<$Res>
    extends _$DeleteMessageCopyWithImpl<$Res, _$DeleteMessageImpl>
    implements _$$DeleteMessageImplCopyWith<$Res> {
  __$$DeleteMessageImplCopyWithImpl(
      _$DeleteMessageImpl _value, $Res Function(_$DeleteMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of DeleteMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? id = null,
    Object? type = null,
  }) {
    return _then(_$DeleteMessageImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value._id
          : id // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DeleteMessageImpl implements _DeleteMessage {
  const _$DeleteMessageImpl(
      {required this.from,
      required this.to,
      required final List<String> id,
      this.type = PayloadType.deleteMessage})
      : _id = id;

  factory _$DeleteMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$DeleteMessageImplFromJson(json);

  @override
  final String from;
  @override
  final String to;
  final List<String> _id;
  @override
  List<String> get id {
    if (_id is EqualUnmodifiableListView) return _id;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_id);
  }

  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'DeleteMessage(from: $from, to: $to, id: $id, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DeleteMessageImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            const DeepCollectionEquality().equals(other._id, _id) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, from, to, const DeepCollectionEquality().hash(_id), type);

  /// Create a copy of DeleteMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      __$$DeleteMessageImplCopyWithImpl<_$DeleteMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DeleteMessageImplToJson(
      this,
    );
  }
}

abstract class _DeleteMessage implements DeleteMessage {
  const factory _DeleteMessage(
      {required final String from,
      required final String to,
      required final List<String> id,
      final PayloadType type}) = _$DeleteMessageImpl;

  factory _DeleteMessage.fromJson(Map<String, dynamic> json) =
      _$DeleteMessageImpl.fromJson;

  @override
  String get from;
  @override
  String get to;
  @override
  List<String> get id;
  @override
  PayloadType get type;

  /// Create a copy of DeleteMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DeleteMessageImplCopyWith<_$DeleteMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
