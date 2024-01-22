// ignore_for_file: invalid_annotation_target
import 'package:card_marketplace/models/converters/uuid.dart';
import 'package:card_marketplace/models/image_uris.dart';
import 'package:card_marketplace/models/miscellaneous.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
// ignore: unused_import
import 'package:flutter/foundation.dart';

part 'generated/freezed/magic_card.freezed.dart';
part 'generated/g/magic_card.g.dart';

@freezed
class MagicCard with _$MagicCard {
  // Constructor, includes every field from the scryfall api
  const factory MagicCard({
    // Core Card fields
    @UUID() required String id,
    required String object,
    @UUID() String? oracleId,
    List<int>? multiverseIds,
    @JsonKey(name: 'mtgo_id') int? mtgoId,
    @JsonKey(name: 'tcgplayer_id') int? tcgplayerId,
    @JsonKey(name: 'cardmarket_id') int? cardmarketId,
    @JsonKey(name: 'lang') required String language,
    required Uri uri,
    @JsonKey(name: 'scryfall_uri') required Uri scryfallUri,
    required String layout,

    // Gameplay fields
    required String name,
    @JsonKey(name: 'oracle_text') String? oracleText,
    @JsonKey(name: 'mana_cost') String? manaCost,

    // Print fields
    // TODO custom converter and jiffy
    @JsonKey(name: 'released_at') required String releasedAt,
    @JsonKey(name: 'highres_image') required bool highResImage,
    @JsonKey(name: 'image_status') @JsonEnum() required ImageStatus imageStatus,
    @JsonKey(name: 'image_uris') ImageUris? imageUris,
    @Default(
        "https://i0.wp.com/mastare.nl/wp-content/uploads/2023/01/placeholder-285.png?ssl=1")
    String defaultImage,
  }) = _MagicCard;

  factory MagicCard.fromJson(Map<String, Object?> json) =>
      _$MagicCardFromJson(json);
}
