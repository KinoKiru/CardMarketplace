// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../card_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardListImpl _$$CardListImplFromJson(Map<String, dynamic> json) =>
    _$CardListImpl(
      data: (json['data'] as List<dynamic>)
          .map((e) => MagicCard.fromJson(e as Map<String, dynamic>))
          .toList(),
      type: json['object'] as String,
      hasMore: json['hasMore'] as bool,
      nextPage: json['nextPage'] == null
          ? null
          : Uri.parse(json['nextPage'] as String),
    );

Map<String, dynamic> _$$CardListImplToJson(_$CardListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'object': instance.type,
      'hasMore': instance.hasMore,
      'nextPage': instance.nextPage?.toString(),
    };
