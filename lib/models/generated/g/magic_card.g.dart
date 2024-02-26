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
      mtgoId: json['mtgo_id'] as int?,
      tcgplayerId: json['tcgplayer_id'] as int?,
      cardmarketId: json['cardmarket_id'] as int?,
      language: json['lang'] as String,
      uri: Uri.parse(json['uri'] as String),
      scryfallUri: Uri.parse(json['scryfall_uri'] as String),
      layout: json['layout'] as String,
      name: json['name'] as String,
      oracleText: json['oracle_text'] as String?,
      manaCost: json['mana_cost'] as String?,
      legalities: Map<String, String>.from(json['legalities'] as Map),
      releasedAt: json['released_at'] as String,
      highResImage: json['highres_image'] as bool,
      imageStatus: $enumDecode(_$ImageStatusEnumMap, json['image_status']),
      imageUris: json['image_uris'] == null
          ? null
          : ImageUris.fromJson(json['image_uris'] as Map<String, dynamic>),
      defaultImage: json['defaultImage'] as String? ??
          "https://i0.wp.com/mastare.nl/wp-content/uploads/2023/01/placeholder-285.png?ssl=1",
    );

Map<String, dynamic> _$$MagicCardImplToJson(_$MagicCardImpl instance) =>
    <String, dynamic>{
      'id': const UUID().toJson(instance.id),
      'object': instance.object,
      'oracleId': _$JsonConverterToJson<String, String>(
          instance.oracleId, const UUID().toJson),
      'multiverseIds': instance.multiverseIds,
      'mtgo_id': instance.mtgoId,
      'tcgplayer_id': instance.tcgplayerId,
      'cardmarket_id': instance.cardmarketId,
      'lang': instance.language,
      'uri': instance.uri.toString(),
      'scryfall_uri': instance.scryfallUri.toString(),
      'layout': instance.layout,
      'name': instance.name,
      'oracle_text': instance.oracleText,
      'mana_cost': instance.manaCost,
      'legalities': instance.legalities,
      'released_at': instance.releasedAt,
      'highres_image': instance.highResImage,
      'image_status': _$ImageStatusEnumMap[instance.imageStatus]!,
      'image_uris': instance.imageUris,
      'defaultImage': instance.defaultImage,
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
