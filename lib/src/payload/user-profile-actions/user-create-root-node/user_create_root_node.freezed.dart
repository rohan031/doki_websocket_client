// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_create_root_node.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserCreateRootNode _$UserCreateRootNodeFromJson(Map<String, dynamic> json) {
  return _UserCreateRootNode.fromJson(json);
}

/// @nodoc
mixin _$UserCreateRootNode {
  String get from => throw _privateConstructorUsedError;
  String get id => throw _privateConstructorUsedError;
  NodeType get nodeType => throw _privateConstructorUsedError;
  List<String> get usersTagged => throw _privateConstructorUsedError;
  PayloadType get type => throw _privateConstructorUsedError;

  /// Serializes this UserCreateRootNode to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserCreateRootNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserCreateRootNodeCopyWith<UserCreateRootNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCreateRootNodeCopyWith<$Res> {
  factory $UserCreateRootNodeCopyWith(
          UserCreateRootNode value, $Res Function(UserCreateRootNode) then) =
      _$UserCreateRootNodeCopyWithImpl<$Res, UserCreateRootNode>;
  @useResult
  $Res call(
      {String from,
      String id,
      NodeType nodeType,
      List<String> usersTagged,
      PayloadType type});
}

/// @nodoc
class _$UserCreateRootNodeCopyWithImpl<$Res, $Val extends UserCreateRootNode>
    implements $UserCreateRootNodeCopyWith<$Res> {
  _$UserCreateRootNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserCreateRootNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? id = null,
    Object? nodeType = null,
    Object? usersTagged = null,
    Object? type = null,
  }) {
    return _then(_value.copyWith(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nodeType: null == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as NodeType,
      usersTagged: null == usersTagged
          ? _value.usersTagged
          : usersTagged // ignore: cast_nullable_to_non_nullable
              as List<String>,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as PayloadType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserCreateRootNodeImplCopyWith<$Res>
    implements $UserCreateRootNodeCopyWith<$Res> {
  factory _$$UserCreateRootNodeImplCopyWith(_$UserCreateRootNodeImpl value,
          $Res Function(_$UserCreateRootNodeImpl) then) =
      __$$UserCreateRootNodeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String from,
      String id,
      NodeType nodeType,
      List<String> usersTagged,
      PayloadType type});
}

/// @nodoc
class __$$UserCreateRootNodeImplCopyWithImpl<$Res>
    extends _$UserCreateRootNodeCopyWithImpl<$Res, _$UserCreateRootNodeImpl>
    implements _$$UserCreateRootNodeImplCopyWith<$Res> {
  __$$UserCreateRootNodeImplCopyWithImpl(_$UserCreateRootNodeImpl _value,
      $Res Function(_$UserCreateRootNodeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserCreateRootNode
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? from = null,
    Object? id = null,
    Object? nodeType = null,
    Object? usersTagged = null,
    Object? type = null,
  }) {
    return _then(_$UserCreateRootNodeImpl(
      from: null == from
          ? _value.from
          : from // ignore: cast_nullable_to_non_nullable
              as String,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      nodeType: null == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as NodeType,
      usersTagged: null == usersTagged
          ? _value._usersTagged
          : usersTagged // ignore: cast_nullable_to_non_nullable
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
class _$UserCreateRootNodeImpl implements _UserCreateRootNode {
  const _$UserCreateRootNodeImpl(
      {required this.from,
      required this.id,
      required this.nodeType,
      required final List<String> usersTagged,
      this.type = PayloadType.userCreateRootNode})
      : _usersTagged = usersTagged;

  factory _$UserCreateRootNodeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserCreateRootNodeImplFromJson(json);

  @override
  final String from;
  @override
  final String id;
  @override
  final NodeType nodeType;
  final List<String> _usersTagged;
  @override
  List<String> get usersTagged {
    if (_usersTagged is EqualUnmodifiableListView) return _usersTagged;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_usersTagged);
  }

  @override
  @JsonKey()
  final PayloadType type;

  @override
  String toString() {
    return 'UserCreateRootNode(from: $from, id: $id, nodeType: $nodeType, usersTagged: $usersTagged, type: $type)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserCreateRootNodeImpl &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType) &&
            const DeepCollectionEquality()
                .equals(other._usersTagged, _usersTagged) &&
            (identical(other.type, type) || other.type == type));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, from, id, nodeType,
      const DeepCollectionEquality().hash(_usersTagged), type);

  /// Create a copy of UserCreateRootNode
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserCreateRootNodeImplCopyWith<_$UserCreateRootNodeImpl> get copyWith =>
      __$$UserCreateRootNodeImplCopyWithImpl<_$UserCreateRootNodeImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserCreateRootNodeImplToJson(
      this,
    );
  }
}

abstract class _UserCreateRootNode implements UserCreateRootNode {
  const factory _UserCreateRootNode(
      {required final String from,
      required final String id,
      required final NodeType nodeType,
      required final List<String> usersTagged,
      final PayloadType type}) = _$UserCreateRootNodeImpl;

  factory _UserCreateRootNode.fromJson(Map<String, dynamic> json) =
      _$UserCreateRootNodeImpl.fromJson;

  @override
  String get from;
  @override
  String get id;
  @override
  NodeType get nodeType;
  @override
  List<String> get usersTagged;
  @override
  PayloadType get type;

  /// Create a copy of UserCreateRootNode
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserCreateRootNodeImplCopyWith<_$UserCreateRootNodeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
