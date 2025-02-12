// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create_secondary_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCreateSecondaryNode _$UserCreateSecondaryNodeFromJson(
    Map<String, dynamic> json) {
  return _UserCreateSecondaryNode.fromJson(json);
}

/// @nodoc
mixin _$UserCreateSecondaryNode {
  String get from => throw _privateConstructorUsedError;
  String get to => throw _privateConstructorUsedError;
  String get nodeId => throw _privateConstructorUsedError;
  NodeType get nodeType => throw _privateConstructorUsedError;
  List<UserNodeType> get parents => throw _privateConstructorUsedError;
  String? get replyOnNodeCreatedBy => throw _privateConstructorUsedError;
  List<String>? get mentions => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this UserCreateSecondaryNode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCreateSecondaryNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCreateSecondaryNodeCopyWith<UserCreateSecondaryNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateSecondaryNodeCopyWith<$Res> {
  factory $UserCreateSecondaryNodeCopyWith(UserCreateSecondaryNode value,
          $Res Function(UserCreateSecondaryNode) then) =
      _$UserCreateSecondaryNodeCopyWithImpl<$Res, UserCreateSecondaryNode>;
  @useResult
  $Res call(
      {String from,
      String to,
      String nodeId,
      NodeType nodeType,
      List<UserNodeType> parents,
      String? replyOnNodeCreatedBy,
      List<String>? mentions,
      PayloadType type});
}

/// @nodoc
class _$UserCreateSecondaryNodeCopyWithImpl<$Res,
        $Val extends UserCreateSecondaryNode>
    implements $UserCreateSecondaryNodeCopyWith<$Res> {
  _$UserCreateSecondaryNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCreateSecondaryNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? nodeId = null,
    Object? nodeType = null,
    Object? parents = null,
    Object? replyOnNodeCreatedBy = freezed,
    Object? mentions = freezed,
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
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      nodeType: null == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as NodeType,
      parents: null == parents
          ? _value.parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<UserNodeType>,
      replyOnNodeCreatedBy: freezed == replyOnNodeCreatedBy
          ? _value.replyOnNodeCreatedBy
          : replyOnNodeCreatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      mentions: freezed == mentions
          ? _value.mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCreateSecondaryNodeImplCopyWith<$Res>
    implements $UserCreateSecondaryNodeCopyWith<$Res> {
  factory _$$UserCreateSecondaryNodeImplCopyWith(
          _$UserCreateSecondaryNodeImpl value,
          $Res Function(_$UserCreateSecondaryNodeImpl) then) =
      __$$UserCreateSecondaryNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String from,
      String to,
      String nodeId,
      NodeType nodeType,
      List<UserNodeType> parents,
      String? replyOnNodeCreatedBy,
      List<String>? mentions,
      PayloadType type});
}

/// @nodoc
class __$$UserCreateSecondaryNodeImplCopyWithImpl<$Res>
    extends _$UserCreateSecondaryNodeCopyWithImpl<$Res,
        _$UserCreateSecondaryNodeImpl>
    implements _$$UserCreateSecondaryNodeImplCopyWith<$Res> {
  __$$UserCreateSecondaryNodeImplCopyWithImpl(
      _$UserCreateSecondaryNodeImpl _value,
      $Res Function(_$UserCreateSecondaryNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCreateSecondaryNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? to = null,
    Object? nodeId = null,
    Object? nodeType = null,
    Object? parents = null,
    Object? replyOnNodeCreatedBy = freezed,
    Object? mentions = freezed,
    Object? type = null,
  }) {
    return _then(_$UserCreateSecondaryNodeImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as String,
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      nodeType: null == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as NodeType,
      parents: null == parents
          ? _value._parents
          : parents // ignore: cast_nullable_to_non_nullable
              as List<UserNodeType>,
      replyOnNodeCreatedBy: freezed == replyOnNodeCreatedBy
          ? _value.replyOnNodeCreatedBy
          : replyOnNodeCreatedBy // ignore: cast_nullable_to_non_nullable
              as String?,
      mentions: freezed == mentions
          ? _value._mentions
          : mentions // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ));
  }
}

/// @nodoc

@JsonSerializable(includeIfNull: false)
class _$UserCreateSecondaryNodeImpl implements _UserCreateSecondaryNode {
  const _$UserCreateSecondaryNodeImpl(
      {required this.from,
      required this.to,
      required this.nodeId,
      required this.nodeType,
      required final List<UserNodeType> parents,
      this.replyOnNodeCreatedBy,
      final List<String>? mentions,
      this.type = PayloadType.userCreateSecondaryNode})
      : _parents = parents,
        _mentions = mentions;

  factory _$UserCreateSecondaryNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCreateSecondaryNodeImplFromJson(json);

  @override
  final String from;
  @override
  final String to;
  @override
  final String nodeId;
  @override
  final NodeType nodeType;
  final List<UserNodeType> _parents;
  @override
  List<UserNodeType> get parents {
    if (_parents is EqualUnmodifiableListView) return _parents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_parents);
  }

  @override
  final String? replyOnNodeCreatedBy;
  final List<String>? _mentions;
  @override
  List<String>? get mentions {
    final value = _mentions;
    if (value == null) return null;
    if (_mentions is EqualUnmodifiableListView) return _mentions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'UserCreateSecondaryNode(from: $from, to: $to, nodeId: $nodeId, nodeType: $nodeType, parents: $parents, replyOnNodeCreatedBy: $replyOnNodeCreatedBy, mentions: $mentions, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCreateSecondaryNodeImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.to, to) || other.to == to) &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType) &&
            const DeepCollectionEquality().equals(other._parents, _parents) &&
            (identical(other.replyOnNodeCreatedBy, replyOnNodeCreatedBy) ||
                other.replyOnNodeCreatedBy == replyOnNodeCreatedBy) &&
            const DeepCollectionEquality().equals(other._mentions, _mentions) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      from,
      to,
      nodeId,
      nodeType,
      const DeepCollectionEquality().hash(_parents),
      replyOnNodeCreatedBy,
      const DeepCollectionEquality().hash(_mentions),
      type);

  /// Create a copy of UserCreateSecondaryNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreateSecondaryNodeImplCopyWith<_$UserCreateSecondaryNodeImpl>
      get copyWith => __$$UserCreateSecondaryNodeImplCopyWithImpl<
          _$UserCreateSecondaryNodeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCreateSecondaryNodeImplToJson(
      this,
    );
  }
}

abstract class _UserCreateSecondaryNode implements UserCreateSecondaryNode {
  const factory _UserCreateSecondaryNode(
      {required final String from,
      required final String to,
      required final String nodeId,
      required final NodeType nodeType,
      required final List<UserNodeType> parents,
      final String? replyOnNodeCreatedBy,
      final List<String>? mentions,
      final PayloadType type}) = _$UserCreateSecondaryNodeImpl;

  factory _UserCreateSecondaryNode.fromJson(Map<String, dynamic> json) =
      _$UserCreateSecondaryNodeImpl.fromJson;

  @override
  String get from;
  @override
  String get to;
  @override
  String get nodeId;
  @override
  NodeType get nodeType;
  @override
  List<UserNodeType> get parents;
  @override
  String? get replyOnNodeCreatedBy;
  @override
  List<String>? get mentions;
  @override
  PayloadType get type;

  /// Create a copy of UserCreateSecondaryNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCreateSecondaryNodeImplCopyWith<_$UserCreateSecondaryNodeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
