// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../magic_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MagicCardImpl _$$MagicCardImplFromJson(Map<String, dynamic> json) =>
    _$MagicCardImpl(
      id: const UUID().fromJson(json['id'] as String),
      type: json['object'] as String,
      oracleId: _$JsonConverterFromJson<String, String>(
          json['oracleId'], const UUID().fromJson),
      multiverseIds: (json['multiverseIds'] as List<dynamic>?)
          ?.map((e) => e as int)
          .toList(),
      mtgoId: json['mtgoId'] as int?,
      tcgplayerId: json['tcgplayerId'] as int?,
      cardmarketId: json['cardmarketId'] as int?,
      language: json['lang'] as String,
      uri: Uri.parse(json['uri'] as String),
      scryfallUri: Uri.parse(json['scryfallUri'] as String),
      layout: json['layout'] as String,
      name: json['name'] as String,
      releasedAt: DateTime.parse(json['releasedAt'] as String),
      highResImage: json['highres_image'] as bool,
      imageStatus: $enumDecode(_$ImageStatusEnumMap, json['imageStatus']),
    );

Map<String, dynamic> _$$MagicCardImplToJson(_$MagicCardImpl instance) =>
    <String, dynamic>{
      'id': const UUID().toJson(instance.id),
      'object': instance.type,
      'oracleId': _$JsonConverterToJson<String, String>(
          instance.oracleId, const UUID().toJson),
      'multiverseIds': instance.multiverseIds,
      'mtgoId': instance.mtgoId,
      'tcgplayerId': instance.tcgplayerId,
      'cardmarketId': instance.cardmarketId,
      'lang': instance.language,
      'uri': instance.uri.toString(),
      'scryfallUri': instance.scryfallUri.toString(),
      'layout': instance.layout,
      'name': instance.name,
      'releasedAt': instance.releasedAt.toIso8601String(),
      'highres_image': instance.highResImage,
      'imageStatus': _$ImageStatusEnumMap[instance.imageStatus]!,
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

const _$ImageStatusEnumMap = {
  ImageStatus.missing: 'missing',
  ImageStatus.placeholder: 'placeholder',
  ImageStatus.lowRes: 'lowres',
  ImageStatus.highResScan: 'highres_scan',
};

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);
