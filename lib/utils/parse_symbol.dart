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
    List<Widget> parsedSymbols = List.empty(growable: true);

    List<String> text = oracleText.split(RegExp(r'{|}'));
    for (int i = 0; i < text.length; i++) {
      if (text[i].trim().isNotEmpty) {
        if (i % 2 == 1) {
          CardSymbol symbol = _symbols!.data
              .firstWhere((element) => element.symbol == "{${text[i]}}");
          parsedSymbols.add(
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 3.0),
              child: SvgPicture.network(
                symbol.svgUri!.toString(),
                width: 15,
                height: 15,
              ),
            ),
          );
        } else {
          parsedSymbols.add(Text(text[i].trim()));
        }
      }
    }
    return parsedSymbols;
  }
}
