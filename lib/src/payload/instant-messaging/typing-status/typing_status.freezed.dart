// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'typing_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TypingStatus _$TypingStatusFromJson(Map<String, dynamic> json) {
  return _TypingStatus.fromJson(json);
}

/// @nodoc
mixin _$TypingStatus {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this TypingStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TypingStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TypingStatusCopyWith<TypingStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypingStatusCopyWith<$Res> {
  factory $TypingStatusCopyWith(
          TypingStatus value, $Res Function(TypingStatus) then) =
      _$TypingStatusCopyWithImpl<$Res, TypingStatus>;
  @useResult
  $Res call({String from, String to, PayloadType type});
}

/// @nodoc
class _$TypingStatusCopyWithImpl<$Res, $Val extends TypingStatus>
    implements $TypingStatusCopyWith<$Res> {
  _$TypingStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TypingStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
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
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TypingStatusImplCopyWith<$Res>
    implements $TypingStatusCopyWith<$Res> {
  factory _$$TypingStatusImplCopyWith(
          _$TypingStatusImpl value, $Res Function(_$TypingStatusImpl) then) =
      __$$TypingStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String to, PayloadType type});
}

/// @nodoc
class __$$TypingStatusImplCopyWithImpl<$Res>
    extends _$TypingStatusCopyWithImpl<$Res, _$TypingStatusImpl>
    implements _$$TypingStatusImplCopyWith<$Res> {
  __$$TypingStatusImplCopyWithImpl(
      _$TypingStatusImpl _value, $Res Function(_$TypingStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of TypingStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? type = null,
  }) {
    return _then(_$TypingStatusImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TypingStatusImpl implements _TypingStatus {
  const _$TypingStatusImpl(
      {required this.from,
      required this.to,
      this.type = PayloadType.typingStatus});

  factory _$TypingStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$TypingStatusImplFromJson(json);

  @override
  final String from;
  @override
  final String to;
  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'TypingStatus(from: $from, to: $to, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TypingStatusImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, type);

  /// Create a copy of TypingStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TypingStatusImplCopyWith<_$TypingStatusImpl> get copyWith =>
      __$$TypingStatusImplCopyWithImpl<_$TypingStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TypingStatusImplToJson(
      this,
    );
  }
}

abstract class _TypingStatus implements TypingStatus {
  const factory _TypingStatus(
      {required final String from,
      required final String to,
      final PayloadType type}) = _$TypingStatusImpl;

  factory _TypingStatus.fromJson(Map<String, dynamic> json) =
      _$TypingStatusImpl.fromJson;

  @override
  String get from;
  @override
  String get to;
  @override
  PayloadType get type;

  /// Create a copy of TypingStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TypingStatusImplCopyWith<_$TypingStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
