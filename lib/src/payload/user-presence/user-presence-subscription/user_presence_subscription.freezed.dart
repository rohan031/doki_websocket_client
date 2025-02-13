// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_presence_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserPresenceSubscription _$UserPresenceSubscriptionFromJson(
    Map<String, dynamic> json) {
  return _UserPresenceSubscription.fromJson(json);
}

/// @nodoc
mixin _$UserPresenceSubscription {
  String get from => throw _privateConstructorUsedError;
  bool get subscribe => throw _privateConstructorUsedError;
  String get user => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this UserPresenceSubscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserPresenceSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserPresenceSubscriptionCopyWith<UserPresenceSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserPresenceSubscriptionCopyWith<$Res> {
  factory $UserPresenceSubscriptionCopyWith(UserPresenceSubscription value,
          $Res Function(UserPresenceSubscription) then) =
      _$UserPresenceSubscriptionCopyWithImpl<$Res, UserPresenceSubscription>;
  @useResult
  $Res call({String from, bool subscribe, String user, PayloadType type});
}

/// @nodoc
class _$UserPresenceSubscriptionCopyWithImpl<$Res,
        $Val extends UserPresenceSubscription>
    implements $UserPresenceSubscriptionCopyWith<$Res> {
  _$UserPresenceSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserPresenceSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? subscribe = null,
    Object? user = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      subscribe: null == subscribe
          ? _value.subscribe
          : subscribe // ignore: cast_nullable_to_non_nullable
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
abstract class _$$UserPresenceSubscriptionImplCopyWith<$Res>
    implements $UserPresenceSubscriptionCopyWith<$Res> {
  factory _$$UserPresenceSubscriptionImplCopyWith(
          _$UserPresenceSubscriptionImpl value,
          $Res Function(_$UserPresenceSubscriptionImpl) then) =
      __$$UserPresenceSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, bool subscribe, String user, PayloadType type});
}

/// @nodoc
class __$$UserPresenceSubscriptionImplCopyWithImpl<$Res>
    extends _$UserPresenceSubscriptionCopyWithImpl<$Res,
        _$UserPresenceSubscriptionImpl>
    implements _$$UserPresenceSubscriptionImplCopyWith<$Res> {
  __$$UserPresenceSubscriptionImplCopyWithImpl(
      _$UserPresenceSubscriptionImpl _value,
      $Res Function(_$UserPresenceSubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserPresenceSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? subscribe = null,
    Object? user = null,
    Object? type = null,
  }) {
    return _then(_$UserPresenceSubscriptionImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      subscribe: null == subscribe
          ? _value.subscribe
          : subscribe // ignore: cast_nullable_to_non_nullable
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
class _$UserPresenceSubscriptionImpl implements _UserPresenceSubscription {
  const _$UserPresenceSubscriptionImpl(
      {required this.from,
      required this.subscribe,
      required this.user,
      this.type = PayloadType.userPresenceSubscription});

  factory _$UserPresenceSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserPresenceSubscriptionImplFromJson(json);

  @override
  final String from;
  @override
  final bool subscribe;
  @override
  final String user;
  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'UserPresenceSubscription(from: $from, subscribe: $subscribe, user: $user, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserPresenceSubscriptionImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.subscribe, subscribe) ||
                other.subscribe == subscribe) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, subscribe, user, type);

  /// Create a copy of UserPresenceSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserPresenceSubscriptionImplCopyWith<_$UserPresenceSubscriptionImpl>
      get copyWith => __$$UserPresenceSubscriptionImplCopyWithImpl<
          _$UserPresenceSubscriptionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserPresenceSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _UserPresenceSubscription implements UserPresenceSubscription {
  const factory _UserPresenceSubscription(
      {required final String from,
      required final bool subscribe,
      required final String user,
      final PayloadType type}) = _$UserPresenceSubscriptionImpl;

  factory _UserPresenceSubscription.fromJson(Map<String, dynamic> json) =
      _$UserPresenceSubscriptionImpl.fromJson;

  @override
  String get from;
  @override
  bool get subscribe;
  @override
  String get user;
  @override
  PayloadType get type;

  /// Create a copy of UserPresenceSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserPresenceSubscriptionImplCopyWith<_$UserPresenceSubscriptionImpl>
      get copyWith => throw _privateConstructorUsedError;
}
