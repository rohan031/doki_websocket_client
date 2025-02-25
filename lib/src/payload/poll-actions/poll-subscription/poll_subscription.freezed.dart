// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_subscription.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PollSubscription _$PollSubscriptionFromJson(Map<String, dynamic> json) {
  return _PollSubscription.fromJson(json);
}

/// @nodoc
mixin _$PollSubscription {
  String get from => throw _privateConstructorUsedError;
  String get pollId => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this PollSubscription to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PollSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PollSubscriptionCopyWith<PollSubscription> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollSubscriptionCopyWith<$Res> {
  factory $PollSubscriptionCopyWith(
          PollSubscription value, $Res Function(PollSubscription) then) =
      _$PollSubscriptionCopyWithImpl<$Res, PollSubscription>;
  @useResult
  $Res call({String from, String pollId, PayloadType type});
}

/// @nodoc
class _$PollSubscriptionCopyWithImpl<$Res, $Val extends PollSubscription>
    implements $PollSubscriptionCopyWith<$Res> {
  _$PollSubscriptionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PollSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? pollId = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      pollId: null == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollSubscriptionImplCopyWith<$Res>
    implements $PollSubscriptionCopyWith<$Res> {
  factory _$$PollSubscriptionImplCopyWith(_$PollSubscriptionImpl value,
          $Res Function(_$PollSubscriptionImpl) then) =
      __$$PollSubscriptionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String pollId, PayloadType type});
}

/// @nodoc
class __$$PollSubscriptionImplCopyWithImpl<$Res>
    extends _$PollSubscriptionCopyWithImpl<$Res, _$PollSubscriptionImpl>
    implements _$$PollSubscriptionImplCopyWith<$Res> {
  __$$PollSubscriptionImplCopyWithImpl(_$PollSubscriptionImpl _value,
      $Res Function(_$PollSubscriptionImpl) _then)
      : super(_value, _then);

  /// Create a copy of PollSubscription
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? pollId = null,
    Object? type = null,
  }) {
    return _then(_$PollSubscriptionImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      pollId: null == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
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
class _$PollSubscriptionImpl implements _PollSubscription {
  const _$PollSubscriptionImpl(
      {required this.from,
      required this.pollId,
      this.type = PayloadType.pollSubscription});

  factory _$PollSubscriptionImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollSubscriptionImplFromJson(json);

  @override
  final String from;
  @override
  final String pollId;
  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'PollSubscription(from: $from, pollId: $pollId, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollSubscriptionImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.pollId, pollId) || other.pollId == pollId) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, pollId, type);

  /// Create a copy of PollSubscription
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PollSubscriptionImplCopyWith<_$PollSubscriptionImpl> get copyWith =>
      __$$PollSubscriptionImplCopyWithImpl<_$PollSubscriptionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollSubscriptionImplToJson(
      this,
    );
  }
}

abstract class _PollSubscription implements PollSubscription {
  const factory _PollSubscription(
      {required final String from,
      required final String pollId,
      final PayloadType type}) = _$PollSubscriptionImpl;

  factory _PollSubscription.fromJson(Map<String, dynamic> json) =
      _$PollSubscriptionImpl.fromJson;

  @override
  String get from;
  @override
  String get pollId;
  @override
  PayloadType get type;

  /// Create a copy of PollSubscription
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PollSubscriptionImplCopyWith<_$PollSubscriptionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
