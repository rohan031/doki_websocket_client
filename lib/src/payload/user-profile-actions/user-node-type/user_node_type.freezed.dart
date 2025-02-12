// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_node_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserNodeType _$UserNodeTypeFromJson(Map<String, dynamic> json) {
  return _UserNodeType.fromJson(json);
}

/// @nodoc
mixin _$UserNodeType {
  String get nodeId => throw _privateConstructorUsedError;
  NodeType get nodeType => throw _privateConstructorUsedError;

  /// Serializes this UserNodeType to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserNodeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserNodeTypeCopyWith<UserNodeType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNodeTypeCopyWith<$Res> {
  factory $UserNodeTypeCopyWith(
          UserNodeType value, $Res Function(UserNodeType) then) =
      _$UserNodeTypeCopyWithImpl<$Res, UserNodeType>;
  @useResult
  $Res call({String nodeId, NodeType nodeType});
}

/// @nodoc
class _$UserNodeTypeCopyWithImpl<$Res, $Val extends UserNodeType>
    implements $UserNodeTypeCopyWith<$Res> {
  _$UserNodeTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserNodeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeId = null,
    Object? nodeType = null,
  }) {
    return _then(_value.copyWith(
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      nodeType: null == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as NodeType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserNodeTypeImplCopyWith<$Res>
    implements $UserNodeTypeCopyWith<$Res> {
  factory _$$UserNodeTypeImplCopyWith(
          _$UserNodeTypeImpl value, $Res Function(_$UserNodeTypeImpl) then) =
      __$$UserNodeTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String nodeId, NodeType nodeType});
}

/// @nodoc
class __$$UserNodeTypeImplCopyWithImpl<$Res>
    extends _$UserNodeTypeCopyWithImpl<$Res, _$UserNodeTypeImpl>
    implements _$$UserNodeTypeImplCopyWith<$Res> {
  __$$UserNodeTypeImplCopyWithImpl(
      _$UserNodeTypeImpl _value, $Res Function(_$UserNodeTypeImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserNodeType
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nodeId = null,
    Object? nodeType = null,
  }) {
    return _then(_$UserNodeTypeImpl(
      nodeId: null == nodeId
          ? _value.nodeId
          : nodeId // ignore: cast_nullable_to_non_nullable
              as String,
      nodeType: null == nodeType
          ? _value.nodeType
          : nodeType // ignore: cast_nullable_to_non_nullable
              as NodeType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserNodeTypeImpl implements _UserNodeType {
  const _$UserNodeTypeImpl({required this.nodeId, required this.nodeType});

  factory _$UserNodeTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserNodeTypeImplFromJson(json);

  @override
  final String nodeId;
  @override
  final NodeType nodeType;

  @override
  String toString() {
    return 'UserNodeType(nodeId: $nodeId, nodeType: $nodeType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserNodeTypeImpl &&
            (identical(other.nodeId, nodeId) || other.nodeId == nodeId) &&
            (identical(other.nodeType, nodeType) ||
                other.nodeType == nodeType));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, nodeId, nodeType);

  /// Create a copy of UserNodeType
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserNodeTypeImplCopyWith<_$UserNodeTypeImpl> get copyWith =>
      __$$UserNodeTypeImplCopyWithImpl<_$UserNodeTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserNodeTypeImplToJson(
      this,
    );
  }
}

abstract class _UserNodeType implements UserNodeType {
  const factory _UserNodeType(
      {required final String nodeId,
      required final NodeType nodeType}) = _$UserNodeTypeImpl;

  factory _UserNodeType.fromJson(Map<String, dynamic> json) =
      _$UserNodeTypeImpl.fromJson;

  @override
  String get nodeId;
  @override
  NodeType get nodeType;

  /// Create a copy of UserNodeType
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserNodeTypeImplCopyWith<_$UserNodeTypeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
