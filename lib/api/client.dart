import 'package:card_marketplace/models/card_list.dart';
import 'package:card_marketplace/models/magic_card.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'partials/g/client.g.dart';

@RestApi(baseUrl: 'https://api.scryfall.com/')
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET('/cards/{id}')
  Future<MagicCard> getCardById(@Path('id') String id);

  @GET('/cards/random')
  Future<MagicCard> getRandomCard();

  @GET('/cards/search')
  Future<CardList> searchCards(@Query('q') String searchValue);
}
