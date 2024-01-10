import 'package:card_marketplace/models/converters/uuid.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card.freezed.dart';
part 'card.g.dart';

@freezed
class Card with _$Card {
  const factory Card({
    @UUID() required String id,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'object') required String type,
    required String title,
    required DateTime releaseDate,
  }) = _Card;

  factory Card.fromJson(Map<String, Object?> json) => _$CardFromJson(json);
}
