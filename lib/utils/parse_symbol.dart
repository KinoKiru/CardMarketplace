import 'package:card_marketplace/api/symbol_client.dart';
import 'package:card_marketplace/models/list_wrapper.dart';
import 'package:card_marketplace/models/symbol.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ParseSymbol {
  static final ParseSymbol _instance = ParseSymbol._internal();
  static late SymbolClient _client;
  static ListWrapper<CardSymbol>? _symbols;

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
    int lastFoundSymbol = 0;
    // {w} blah blah
    // {w} blah blah {g}
    for (CardSymbol symbol in _symbols!.data) {
      if (oracleText.contains(symbol.symbol) && symbol.svgUri != null) {
        // Get index of symbol
        int index = oracleText.indexOf(symbol.symbol);
        // Text before if so add it
        if (index > 0) {
          // Index
          parsedSymbols.add(Text(oracleText.substring(lastFoundSymbol, index)));
          lastFoundSymbol = index + 2;
          oracleText = oracleText.substring(lastFoundSymbol, oracleText.length);
        }
        // Add svg
        parsedSymbols.add(SvgPicture.network(symbol.svgUri!.toString()));
        // Add text after symbol
        oracleText = oracleText.substring(index + 3, oracleText.length);
      }
      parsedSymbols.add(Text(oracleText));
    }
    return parsedSymbols;
  }
}
