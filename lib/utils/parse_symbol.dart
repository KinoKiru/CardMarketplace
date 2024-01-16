import 'package:card_marketplace/api/symbol_client.dart';
import 'package:card_marketplace/models/list_wrapper.dart';
import 'package:card_marketplace/models/symbol.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class ParseSymbol {
  static final ParseSymbol _instance = ParseSymbol._internal();
  static late SymbolClient _client;

  factory ParseSymbol() {
    return _instance;
  }

  ParseSymbol._internal() {
    Dio dio = Dio();
    _client = SymbolClient(dio);
  }

  Future<List<Widget>> parseSymbols(String oracleText) async {
    ListWrapper<CardSymbol> symbols = await _client.getSymbols();
    List<Widget> parsedSymbols = List.empty();

    for (CardSymbol symbol in symbols.data) {
      if (oracleText.contains(symbol.symbol) && symbol.svgUri != null) {
        parsedSymbols.add(
          Image.network(symbol.svgUri!.toString()),
        );
        int index = oracleText.indexOf(symbol.symbol);
        parsedSymbols.add(Text(oracleText.substring(index, index + 3)));
        oracleText.replaceFirst(symbol.symbol, '');
      }
    }
    return parsedSymbols;
  }
}
