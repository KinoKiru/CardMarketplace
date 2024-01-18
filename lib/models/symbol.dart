// ignore: unused_import
// ignore_for_file: invalid_annotation_target

import 'package:card_marketplace/models/converters/mana_cost.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/freezed/symbol.freezed.dart';
part 'generated/g/symbol.g.dart';

@freezed
class CardSymbol with _$CardSymbol {
  const factory CardSymbol({
    required String object,
    required String symbol,
    @JsonKey(name: 'svg_uri') Uri? svgUri,
    @JsonKey(name: 'loose_variant') String? looseVariant,
    required String english,
    @JsonKey(name: 'represents_mana') required bool representsMana,
    @JsonKey(name: 'mana_value') double? manaValue,
    @JsonKey(name: 'appears_in_mana_costs') required bool appearsInManaCosts,
    required bool funny,
    required List<String>? colors,
    required bool hybrid,
    required bool phyrexian,
    @JsonKey(name: 'gatherer_alternates') List<String>? gathererAlternates,
  }) = _CardSymbol;

  factory CardSymbol.fromJson(Map<String, Object?> json) =>
      _$CardSymbolFromJson(json);
}
