import 'package:card_marketplace/models/converters/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class Card with _$Card {
  const factory Card({
    // Core Card fields
    @UUID() required String id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'object') required String type,
    @UUID() String? oracleId,
    List<int>? multiverseIds,
    int? mtgoId,
    int? tcgplayerId,
    int? cardmarketId,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'lang') String language,

    // Gameplay fields
    required String name,

    // Print fields
    // TODO
    required DateTime releasedAt,
  }) = _Card;

  factory Card.fromJson(Map<String, Object?> json) => _$CardFromJson(json);
}
