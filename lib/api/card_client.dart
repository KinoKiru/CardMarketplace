import 'package:card_marketplace/models/magic_card.dart';
import 'package:card_marketplace/models/list_wrapper.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'generated/g/card_client.g.dart';

@RestApi(baseUrl: 'https://api.scryfall.com/')
abstract class CardClient {
  factory CardClient(Dio dio, {String baseUrl}) = _CardClient;

  @GET('/cards/{id}')
  Future<MagicCard> getCardById(@Path('id') String id);

  @GET('/cards/random')
  Future<MagicCard> getRandomCard();

  @GET('/cards/search')
  Future<ListWrapper<MagicCard>> searchCards(
      @Query('q', encoded: true) String searchValue);
}
