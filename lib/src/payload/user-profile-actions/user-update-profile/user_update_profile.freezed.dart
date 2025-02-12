// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_update_profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserUpdateProfile _$UserUpdateProfileFromJson(Map<String, dynamic> json) {
  return _UserUpdateProfile.fromJson(json);
}

/// @nodoc
mixin _$UserUpdateProfile {
  String get from => throw _privateConstructorUsedError;
  String get bio => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get profilePicture => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this UserUpdateProfile to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserUpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserUpdateProfileCopyWith<UserUpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserUpdateProfileCopyWith<$Res> {
  factory $UserUpdateProfileCopyWith(
          UserUpdateProfile value, $Res Function(UserUpdateProfile) then) =
      _$UserUpdateProfileCopyWithImpl<$Res, UserUpdateProfile>;
  @useResult
  $Res call(
      {String from,
      String bio,
      String name,
      String profilePicture,
      PayloadType type});
}

/// @nodoc
class _$UserUpdateProfileCopyWithImpl<$Res, $Val extends UserUpdateProfile>
    implements $UserUpdateProfileCopyWith<$Res> {
  _$UserUpdateProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserUpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? bio = null,
    Object? name = null,
    Object? profilePicture = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserUpdateProfileImplCopyWith<$Res>
    implements $UserUpdateProfileCopyWith<$Res> {
  factory _$$UserUpdateProfileImplCopyWith(_$UserUpdateProfileImpl value,
          $Res Function(_$UserUpdateProfileImpl) then) =
      __$$UserUpdateProfileImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String from,
      String bio,
      String name,
      String profilePicture,
      PayloadType type});
}

/// @nodoc
class __$$UserUpdateProfileImplCopyWithImpl<$Res>
    extends _$UserUpdateProfileCopyWithImpl<$Res, _$UserUpdateProfileImpl>
    implements _$$UserUpdateProfileImplCopyWith<$Res> {
  __$$UserUpdateProfileImplCopyWithImpl(_$UserUpdateProfileImpl _value,
      $Res Function(_$UserUpdateProfileImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserUpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? bio = null,
    Object? name = null,
    Object? profilePicture = null,
    Object? type = null,
  }) {
    return _then(_$UserUpdateProfileImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      bio: null == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profilePicture: null == profilePicture
          ? _value.profilePicture
          : profilePicture // ignore: cast_nullable_to_non_nullable
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
class _$UserUpdateProfileImpl implements _UserUpdateProfile {
  const _$UserUpdateProfileImpl(
      {required this.from,
      required this.bio,
      required this.name,
      required this.profilePicture,
      this.type = PayloadType.userUpdateProfile});

  factory _$UserUpdateProfileImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserUpdateProfileImplFromJson(json);

  @override
  final String from;
  @override
  final String bio;
  @override
  final String name;
  @override
  final String profilePicture;
  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'UserUpdateProfile(from: $from, bio: $bio, name: $name, profilePicture: $profilePicture, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserUpdateProfileImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profilePicture, profilePicture) ||
                other.profilePicture == profilePicture) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, from, bio, name, profilePicture, type);

  /// Create a copy of UserUpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserUpdateProfileImplCopyWith<_$UserUpdateProfileImpl> get copyWith =>
      __$$UserUpdateProfileImplCopyWithImpl<_$UserUpdateProfileImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserUpdateProfileImplToJson(
      this,
    );
  }
}

abstract class _UserUpdateProfile implements UserUpdateProfile {
  const factory _UserUpdateProfile(
      {required final String from,
      required final String bio,
      required final String name,
      required final String profilePicture,
      final PayloadType type}) = _$UserUpdateProfileImpl;

  factory _UserUpdateProfile.fromJson(Map<String, dynamic> json) =
      _$UserUpdateProfileImpl.fromJson;

  @override
  String get from;
  @override
  String get bio;
  @override
  String get name;
  @override
  String get profilePicture;
  @override
  PayloadType get type;

  /// Create a copy of UserUpdateProfile
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserUpdateProfileImplCopyWith<_$UserUpdateProfileImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
