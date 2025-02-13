// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPresenceInfo _$UserPresenceInfoFromJson(Map<String, dynamic> json) {
  return _UserPresenceInfo.fromJson(json);
}

/// @nodoc
mixin _$UserPresenceInfo {
  String get to => throw _privateConstructorUsedError;
  bool get online => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this UserPresenceInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPresenceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPresenceInfoCopyWith<UserPresenceInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPresenceInfoCopyWith<$Res> {
  factory $UserPresenceInfoCopyWith(
          UserPresenceInfo value, $Res Function(UserPresenceInfo) then) =
      _$UserPresenceInfoCopyWithImpl<$Res, UserPresenceInfo>;
  @useResult
  $Res call({String to, bool online, String user, PayloadType type});
}

/// @nodoc
class _$UserPresenceInfoCopyWithImpl<$Res, $Val extends UserPresenceInfo>
    implements $UserPresenceInfoCopyWith<$Res> {
  _$UserPresenceInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPresenceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? online = null,
    Object? user = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserPresenceInfoImplCopyWith<$Res>
    implements $UserPresenceInfoCopyWith<$Res> {
  factory _$$UserPresenceInfoImplCopyWith(_$UserPresenceInfoImpl value,
          $Res Function(_$UserPresenceInfoImpl) then) =
      __$$UserPresenceInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String to, bool online, String user, PayloadType type});
}

/// @nodoc
class __$$UserPresenceInfoImplCopyWithImpl<$Res>
    extends _$UserPresenceInfoCopyWithImpl<$Res, _$UserPresenceInfoImpl>
    implements _$$UserPresenceInfoImplCopyWith<$Res> {
  __$$UserPresenceInfoImplCopyWithImpl(_$UserPresenceInfoImpl _value,
      $Res Function(_$UserPresenceInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? to = null,
    Object? online = null,
    Object? user = null,
    Object? type = null,
  }) {
    return _then(_$UserPresenceInfoImpl(
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      online: null == online
          ? _value.online
          : online // ignore: cast_nullable_to_non_nullable
              as bool,
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
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
class _$UserPresenceInfoImpl implements _UserPresenceInfo {
  const _$UserPresenceInfoImpl(
      {required this.to,
      required this.online,
      required this.user,
      this.type = PayloadType.userPresenceInfo});

  factory _$UserPresenceInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPresenceInfoImplFromJson(json);

  @override
  final String to;
  @override
  final bool online;
  @override
  final String user;
  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'UserPresenceInfo(to: $to, online: $online, user: $user, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPresenceInfoImpl &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.online, online) || other.online == online) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, to, online, user, type);

  /// Create a copy of UserPresenceInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPresenceInfoImplCopyWith<_$UserPresenceInfoImpl> get copyWith =>
      __$$UserPresenceInfoImplCopyWithImpl<_$UserPresenceInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPresenceInfoImplToJson(
      this,
    );
  }
}

abstract class _UserPresenceInfo implements UserPresenceInfo {
  const factory _UserPresenceInfo(
      {required final String to,
      required final bool online,
      required final String user,
      final PayloadType type}) = _$UserPresenceInfoImpl;

  factory _UserPresenceInfo.fromJson(Map<String, dynamic> json) =
      _$UserPresenceInfoImpl.fromJson;

  @override
  String get to;
  @override
  bool get online;
  @override
  String get user;
  @override
  PayloadType get type;

  /// Create a copy of UserPresenceInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPresenceInfoImplCopyWith<_$UserPresenceInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
