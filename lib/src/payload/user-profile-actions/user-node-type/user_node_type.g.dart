// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_node_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserNodeType _$UserNodeTypeFromJson(Map<String, dynamic> json) => UserNodeType(
      nodeId: json['nodeId'] as String,
      nodeType: $enumDecode(_$NodeTypeEnumMap, json['nodeType']),
    );

Map<String, dynamic> _$UserNodeTypeToJson(UserNodeType instance) =>
    <String, dynamic>{
      'nodeId': instance.nodeId,
      'nodeType': _$NodeTypeEnumMap[instance.nodeType]!,
    };

const _$NodeTypeEnumMap = {
  NodeType.user: 'user',
  NodeType.post: 'post',
  NodeType.comment: 'comment',
  NodeType.discussion: 'discussion',
};
