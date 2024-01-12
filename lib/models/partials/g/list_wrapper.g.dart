// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../list_wrapper.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseListWrapperImpl _$$BaseListWrapperImplFromJson(
        Map<String, dynamic> json) =>
    _$BaseListWrapperImpl(
      type: json['object'] as String? ?? String,
      hasMore: json['hasMore'] as bool? ?? bool,
      nextPage: json['nextPage'] == null
          ? Uri
          : Uri.parse(json['nextPage'] as String),
      data: json['data'] ?? List<dynamic>,
    );

Map<String, dynamic> _$$BaseListWrapperImplToJson(
        _$BaseListWrapperImpl instance) =>
    <String, dynamic>{
      'object': instance.type,
      'hasMore': instance.hasMore,
      'nextPage': instance.nextPage?.toString(),
      'data': instance.data,
    };
