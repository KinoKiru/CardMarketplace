// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../../symbol.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CardSymbolImpl _$$CardSymbolImplFromJson(Map<String, dynamic> json) =>
    _$CardSymbolImpl(
      object: json['object'] as String,
      symbol: json['symbol'] as String,
      svgUri:
          json['svg_uri'] == null ? null : Uri.parse(json['svg_uri'] as String),
      looseVariant: json['loose_variant'] as String?,
      english: json['english'] as String,
      representsMana: json['represents_mana'] as bool,
      manaValue: (json['mana_value'] as num?)?.toDouble(),
      appearsInManaCosts: json['appears_in_mana_costs'] as bool,
      funny: json['funny'] as bool,
      colors:
          (json['colors'] as List<dynamic>?)?.map((e) => e as String).toList(),
      hybrid: json['hybrid'] as bool,
      phyrexian: json['phyrexian'] as bool,
      gathererAlternates: (json['gatherer_alternates'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
    );

Map<String, dynamic> _$$CardSymbolImplToJson(_$CardSymbolImpl instance) =>
    <String, dynamic>{
      'object': instance.object,
      'symbol': instance.symbol,
      'svg_uri': instance.svgUri?.toString(),
      'loose_variant': instance.looseVariant,
      'english': instance.english,
      'represents_mana': instance.representsMana,
      'mana_value': instance.manaValue,
      'appears_in_mana_costs': instance.appearsInManaCosts,
      'funny': instance.funny,
      'colors': instance.colors,
      'hybrid': instance.hybrid,
      'phyrexian': instance.phyrexian,
      'gatherer_alternates': instance.gathererAlternates,
    };
