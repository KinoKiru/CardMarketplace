// ignore_for_file: invalid_annotation_target
import 'package:card_marketplace/models/converters/uuid.dart';
import 'package:card_marketplace/models/miscellaneous.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'partials/freezed/magic_card.freezed.dart';
part 'partials/g/magic_card.g.dart';

@freezed
class MagicCard with _$MagicCard {
  // Constructor, includes every field from the scryfall api
  const factory MagicCard({
    // Core Card fields
    @UUID() required String id,
    required String object,
    @UUID() String? oracleId,
    List<int>? multiverseIds,
    int? mtgoId,
    int? tcgplayerId,
    int? cardmarketId,
    @JsonKey(name: 'lang') required String language,
    required Uri uri,
    @JsonKey(name: 'scryfall_uri') required Uri scryfallUri,
    required String layout,

    // Gameplay fields
    required String name,

    // Print fields
    // TODO custom converter and jiffy
    @JsonKey(name: 'released_at') required String releasedAt,
    @JsonKey(name: 'highres_image') required bool highResImage,
    @JsonKey(name: 'image_status') @JsonEnum() required ImageStatus imageStatus,
  }) = _MagicCard;

  factory MagicCard.fromJson(Map<String, Object?> json) =>
      _$MagicCardFromJson(json);
}
