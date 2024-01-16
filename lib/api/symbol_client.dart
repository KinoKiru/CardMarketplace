import 'package:card_marketplace/models/list_wrapper.dart';
import 'package:card_marketplace/models/symbol.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'generated/g/symbol_client.g.dart';

@RestApi(baseUrl: 'https://api.scryfall.com/')
abstract class SymbolClient {
  factory SymbolClient(Dio dio, {String baseUrl}) = _SymbolClient;

  @GET('/symbology')
  Future<ListWrapper<CardSymbol>> getSymbols();
}
