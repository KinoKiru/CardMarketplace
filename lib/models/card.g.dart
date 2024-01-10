// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardImpl _$$CardImplFromJson(Map<String, dynamic> json) => _$CardImpl(
      id: const UUID().fromJson(json['id'] as String),
      type: json['object'] as String,
      title: json['title'] as String,
      releaseDate: DateTime.parse(json['releaseDate'] as String),
    );

Map<String, dynamic> _$$CardImplToJson(_$CardImpl instance) =>
    <String, dynamic>{
      'id': const UUID().toJson(instance.id),
      'object': instance.type,
      'title': instance.title,
      'releaseDate': instance.releaseDate.toIso8601String(),
    };
