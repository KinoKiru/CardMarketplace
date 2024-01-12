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
      object: json['object'] as String,
      hasMore: json['has_more'] as bool,
      nextPage: json['next_page'] == null
          ? null
          : Uri.parse(json['next_page'] as String),
    );

Map<String, dynamic> _$$CardListImplToJson(_$CardListImpl instance) =>
    <String, dynamic>{
      'data': instance.data,
      'object': instance.object,
      'has_more': instance.hasMore,
      'next_page': instance.nextPage?.toString(),
    };
