// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditMessage _$EditMessageFromJson(Map<String, dynamic> json) {
  return _EditMessage.fromJson(json);
}

/// @nodoc
mixin _$EditMessage {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;
  @UTCDateTimeConverter()
  DateTime get editedOn => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this EditMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EditMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EditMessageCopyWith<EditMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditMessageCopyWith<$Res> {
  factory $EditMessageCopyWith(
          EditMessage value, $Res Function(EditMessage) then) =
      _$EditMessageCopyWithImpl<$Res, EditMessage>;
  @useResult
  $Res call(
      {String from,
      String to,
      String id,
      String body,
      @UTCDateTimeConverter() DateTime editedOn,
      PayloadType type});
}

/// @nodoc
class _$EditMessageCopyWithImpl<$Res, $Val extends EditMessage>
    implements $EditMessageCopyWith<$Res> {
  _$EditMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EditMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? id = null,
    Object? body = null,
    Object? editedOn = null,
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
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      editedOn: null == editedOn
          ? _value.editedOn
          : editedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditMessageImplCopyWith<$Res>
    implements $EditMessageCopyWith<$Res> {
  factory _$$EditMessageImplCopyWith(
          _$EditMessageImpl value, $Res Function(_$EditMessageImpl) then) =
      __$$EditMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String from,
      String to,
      String id,
      String body,
      @UTCDateTimeConverter() DateTime editedOn,
      PayloadType type});
}

/// @nodoc
class __$$EditMessageImplCopyWithImpl<$Res>
    extends _$EditMessageCopyWithImpl<$Res, _$EditMessageImpl>
    implements _$$EditMessageImplCopyWith<$Res> {
  __$$EditMessageImplCopyWithImpl(
      _$EditMessageImpl _value, $Res Function(_$EditMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of EditMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? id = null,
    Object? body = null,
    Object? editedOn = null,
    Object? type = null,
  }) {
    return _then(_$EditMessageImpl(
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
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
      editedOn: null == editedOn
          ? _value.editedOn
          : editedOn // ignore: cast_nullable_to_non_nullable
              as DateTime,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditMessageImpl implements _EditMessage {
  const _$EditMessageImpl(
      {required this.from,
      required this.to,
      required this.id,
      required this.body,
      @UTCDateTimeConverter() required this.editedOn,
      this.type = PayloadType.editMessage});

  factory _$EditMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditMessageImplFromJson(json);

  @override
  final String from;
  @override
  final String to;
  @override
  final String id;
  @override
  final String body;
  @override
  @UTCDateTimeConverter()
  final DateTime editedOn;
  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'EditMessage(from: $from, to: $to, id: $id, body: $body, editedOn: $editedOn, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditMessageImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.editedOn, editedOn) ||
                other.editedOn == editedOn) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, from, to, id, body, editedOn, type);

  /// Create a copy of EditMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EditMessageImplCopyWith<_$EditMessageImpl> get copyWith =>
      __$$EditMessageImplCopyWithImpl<_$EditMessageImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditMessageImplToJson(
      this,
    );
  }
}

abstract class _EditMessage implements EditMessage {
  const factory _EditMessage(
      {required final String from,
      required final String to,
      required final String id,
      required final String body,
      @UTCDateTimeConverter() required final DateTime editedOn,
      final PayloadType type}) = _$EditMessageImpl;

  factory _EditMessage.fromJson(Map<String, dynamic> json) =
      _$EditMessageImpl.fromJson;

  @override
  String get from;
  @override
  String get to;
  @override
  String get id;
  @override
  String get body;
  @override
  @UTCDateTimeConverter()
  DateTime get editedOn;
  @override
  PayloadType get type;

  /// Create a copy of EditMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EditMessageImplCopyWith<_$EditMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
