// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../magic_card.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MagicCardImpl _$$MagicCardImplFromJson(Map<String, dynamic> json) =>
    _$MagicCardImpl(
      id: const UUID().fromJson(json['id'] as String),
      object: json['object'] as String,
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
      scryfallUri: Uri.parse(json['scryfall_uri'] as String),
      layout: json['layout'] as String,
      name: json['name'] as String,
      releasedAt: json['released_at'] as String,
      highResImage: json['highres_image'] as bool,
      imageStatus: $enumDecode(_$ImageStatusEnumMap, json['image_status']),
    );

Map<String, dynamic> _$$MagicCardImplToJson(_$MagicCardImpl instance) =>
    <String, dynamic>{
      'id': const UUID().toJson(instance.id),
      'object': instance.object,
      'oracleId': _$JsonConverterToJson<String, String>(
          instance.oracleId, const UUID().toJson),
      'multiverseIds': instance.multiverseIds,
      'mtgoId': instance.mtgoId,
      'tcgplayerId': instance.tcgplayerId,
      'cardmarketId': instance.cardmarketId,
      'lang': instance.language,
      'uri': instance.uri.toString(),
      'scryfall_uri': instance.scryfallUri.toString(),
      'layout': instance.layout,
      'name': instance.name,
      'released_at': instance.releasedAt,
      'highres_image': instance.highResImage,
      'image_status': _$ImageStatusEnumMap[instance.imageStatus]!,
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
