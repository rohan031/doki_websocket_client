// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'poll_votes_update.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PollVotesUpdate _$PollVotesUpdateFromJson(Map<String, dynamic> json) {
  return _PollVotesUpdate.fromJson(json);
}

/// @nodoc
mixin _$PollVotesUpdate {
  String get from => throw _privateConstructorUsedError;
  String get pollId => throw _privateConstructorUsedError;
  List<int> get votes => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this PollVotesUpdate to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PollVotesUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PollVotesUpdateCopyWith<PollVotesUpdate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PollVotesUpdateCopyWith<$Res> {
  factory $PollVotesUpdateCopyWith(
          PollVotesUpdate value, $Res Function(PollVotesUpdate) then) =
      _$PollVotesUpdateCopyWithImpl<$Res, PollVotesUpdate>;
  @useResult
  $Res call({String from, String pollId, List<int> votes, PayloadType type});
}

/// @nodoc
class _$PollVotesUpdateCopyWithImpl<$Res, $Val extends PollVotesUpdate>
    implements $PollVotesUpdateCopyWith<$Res> {
  _$PollVotesUpdateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PollVotesUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? pollId = null,
    Object? votes = null,
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
      votes: null == votes
          ? _value.votes
          : votes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PollVotesUpdateImplCopyWith<$Res>
    implements $PollVotesUpdateCopyWith<$Res> {
  factory _$$PollVotesUpdateImplCopyWith(_$PollVotesUpdateImpl value,
          $Res Function(_$PollVotesUpdateImpl) then) =
      __$$PollVotesUpdateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String from, String pollId, List<int> votes, PayloadType type});
}

/// @nodoc
class __$$PollVotesUpdateImplCopyWithImpl<$Res>
    extends _$PollVotesUpdateCopyWithImpl<$Res, _$PollVotesUpdateImpl>
    implements _$$PollVotesUpdateImplCopyWith<$Res> {
  __$$PollVotesUpdateImplCopyWithImpl(
      _$PollVotesUpdateImpl _value, $Res Function(_$PollVotesUpdateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PollVotesUpdate
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? pollId = null,
    Object? votes = null,
    Object? type = null,
  }) {
    return _then(_$PollVotesUpdateImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      pollId: null == pollId
          ? _value.pollId
          : pollId // ignore: cast_nullable_to_non_nullable
              as String,
      votes: null == votes
          ? _value._votes
          : votes // ignore: cast_nullable_to_non_nullable
              as List<int>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PollVotesUpdateImpl implements _PollVotesUpdate {
  const _$PollVotesUpdateImpl(
      {required this.from,
      required this.pollId,
      required final List<int> votes,
      this.type = PayloadType.pollVotesUpdate})
      : _votes = votes;

  factory _$PollVotesUpdateImpl.fromJson(Map<String, dynamic> json) =>
      _$$PollVotesUpdateImplFromJson(json);

  @override
  final String from;
  @override
  final String pollId;
  final List<int> _votes;
  @override
  List<int> get votes {
    if (_votes is EqualUnmodifiableListView) return _votes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_votes);
  }

  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'PollVotesUpdate(from: $from, pollId: $pollId, votes: $votes, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PollVotesUpdateImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.pollId, pollId) || other.pollId == pollId) &&
            const DeepCollectionEquality().equals(other._votes, _votes) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, pollId,
      const DeepCollectionEquality().hash(_votes), type);

  /// Create a copy of PollVotesUpdate
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PollVotesUpdateImplCopyWith<_$PollVotesUpdateImpl> get copyWith =>
      __$$PollVotesUpdateImplCopyWithImpl<_$PollVotesUpdateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PollVotesUpdateImplToJson(
      this,
    );
  }
}

abstract class _PollVotesUpdate implements PollVotesUpdate {
  const factory _PollVotesUpdate(
      {required final String from,
      required final String pollId,
      required final List<int> votes,
      final PayloadType type}) = _$PollVotesUpdateImpl;

  factory _PollVotesUpdate.fromJson(Map<String, dynamic> json) =
      _$PollVotesUpdateImpl.fromJson;

  @override
  String get from;
  @override
  String get pollId;
  @override
  List<int> get votes;
  @override
  PayloadType get type;

  /// Create a copy of PollVotesUpdate
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PollVotesUpdateImplCopyWith<_$PollVotesUpdateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
