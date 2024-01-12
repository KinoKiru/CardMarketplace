import 'package:card_marketplace/models/list_wrapper.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:card_marketplace/models/magic_card.dart';

part 'partials/freezed/card_list.freezed.dart';
part 'partials/g/card_list.g.dart';

@freezed
class CardList extends BaseListWrapper {
  // Constructor, includes every field from the scryfall api
  @override
  const factory CardList({
    @override required List<MagicCard> data,
    @override @JsonKey(name: 'object') required String type,
    @override required bool hasMore,
    @override Uri? nextPage,
  }) = _CardList;

  @override
  factory CardList.fromJson(Map<String, Object?> json) =>
      _$CardListFromJson(json);
}
