// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_removes_friend_relation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserRemovesFriendRelation _$UserRemovesFriendRelationFromJson(
    Map<String, dynamic> json) {
  return _UserRemovesFriendRelation.fromJson(json);
}

/// @nodoc
mixin _$UserRemovesFriendRelation {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this UserRemovesFriendRelation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserRemovesFriendRelation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserRemovesFriendRelationCopyWith<UserRemovesFriendRelation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserRemovesFriendRelationCopyWith<$Res> {
  factory $UserRemovesFriendRelationCopyWith(UserRemovesFriendRelation value,
          $Res Function(UserRemovesFriendRelation) then) =
      _$UserRemovesFriendRelationCopyWithImpl<$Res, UserRemovesFriendRelation>;
  @useResult
  $Res call({String from, String to, PayloadType type});
}

/// @nodoc
class _$UserRemovesFriendRelationCopyWithImpl<$Res,
        $Val extends UserRemovesFriendRelation>
    implements $UserRemovesFriendRelationCopyWith<$Res> {
  _$UserRemovesFriendRelationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserRemovesFriendRelation
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
abstract class _$$UserRemovesFriendRelationImplCopyWith<$Res>
    implements $UserRemovesFriendRelationCopyWith<$Res> {
  factory _$$UserRemovesFriendRelationImplCopyWith(
          _$UserRemovesFriendRelationImpl value,
          $Res Function(_$UserRemovesFriendRelationImpl) then) =
      __$$UserRemovesFriendRelationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String to, PayloadType type});
}

/// @nodoc
class __$$UserRemovesFriendRelationImplCopyWithImpl<$Res>
    extends _$UserRemovesFriendRelationCopyWithImpl<$Res,
        _$UserRemovesFriendRelationImpl>
    implements _$$UserRemovesFriendRelationImplCopyWith<$Res> {
  __$$UserRemovesFriendRelationImplCopyWithImpl(
      _$UserRemovesFriendRelationImpl _value,
      $Res Function(_$UserRemovesFriendRelationImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserRemovesFriendRelation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? type = null,
  }) {
    return _then(_$UserRemovesFriendRelationImpl(
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
class _$UserRemovesFriendRelationImpl implements _UserRemovesFriendRelation {
  const _$UserRemovesFriendRelationImpl(
      {required this.from,
      required this.to,
      this.type = PayloadType.userRemovesFriendRelation});

  factory _$UserRemovesFriendRelationImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserRemovesFriendRelationImplFromJson(json);

  @override
  final String from;
  @override
  final String to;
  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'UserRemovesFriendRelation(from: $from, to: $to, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserRemovesFriendRelationImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, to, type);

  /// Create a copy of UserRemovesFriendRelation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserRemovesFriendRelationImplCopyWith<_$UserRemovesFriendRelationImpl>
      get copyWith => __$$UserRemovesFriendRelationImplCopyWithImpl<
          _$UserRemovesFriendRelationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserRemovesFriendRelationImplToJson(
      this,
    );
  }
}

abstract class _UserRemovesFriendRelation implements UserRemovesFriendRelation {
  const factory _UserRemovesFriendRelation(
      {required final String from,
      required final String to,
      final PayloadType type}) = _$UserRemovesFriendRelationImpl;

  factory _UserRemovesFriendRelation.fromJson(Map<String, dynamic> json) =
      _$UserRemovesFriendRelationImpl.fromJson;

  @override
  String get from;
  @override
  String get to;
  @override
  PayloadType get type;

  /// Create a copy of UserRemovesFriendRelation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserRemovesFriendRelationImplCopyWith<_$UserRemovesFriendRelationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
