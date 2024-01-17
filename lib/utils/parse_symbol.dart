import 'package:card_marketplace/api/symbol_client.dart';
import 'package:card_marketplace/models/list_wrapper.dart';
import 'package:card_marketplace/models/symbol.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ParseSymbol {
  static final ParseSymbol _instance = ParseSymbol._internal();
  static late SymbolClient _client;
  static late ListWrapper<CardSymbol> _symbols;

  factory ParseSymbol() {
    return _instance;
  }

  ParseSymbol._internal() {
    Dio dio = Dio();
    _client = SymbolClient(dio);
  }

  Future<List<Widget>> parseSymbols(String oracleText) async {
    _symbols = _symbols ?? await _client.getSymbols();
    List<Widget> parsedSymbols = List.empty();

    for (CardSymbol symbol in _symbols.data) {
      if (oracleText.contains(symbol.symbol) && symbol.svgUri != null) {
        // Get index of symbol
        int index = oracleText.indexOf(symbol.symbol);
        if () {

        }
        // Add check if there is text before
        parsedSymbols.add(SvgPicture.network(symbol.svgUri!.toString()));
        parsedSymbols.add(Text(oracleText.substring(index, index + 2)));
        // remove symbol from text
        oracleText.replaceFirst(symbol.symbol, '');
      }
    }
    return parsedSymbols;
  }
}
