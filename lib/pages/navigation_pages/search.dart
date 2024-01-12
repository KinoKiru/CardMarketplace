import 'package:card_marketplace/api/client.dart';
import 'package:card_marketplace/components/async_builder.dart';
import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:card_marketplace/models/card_list.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:card_marketplace/models/magic_card.dart' as card_model;

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  TextEditingController controller = TextEditingController();
  String query = "";
  @override
  Widget build(BuildContext context) {
    Dio dio = Dio();
    final client = RestClient(dio);
    return CustomAppBar(
      title: FlutterI18n.translate(context, 'search.title'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 45,
              child: TextFormField(
                onChanged: (String value) {
                  setState(() {
                    query = value;
                  });
                },
                autofocus: false,
                controller: controller,
                decoration: InputDecoration(
                  prefixIcon: Iconify(
                    MaterialSymbols.search,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                  prefixIconColor: Colors.grey.shade200,
                  border: const OutlineInputBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(10),
                    ),
                  ),
                  labelText: FlutterI18n.translate(context, 'search.searchBar'),
                ),
              ),
            ),
          ),
          query.length >= 3
              ? Expanded(
                  child: SimpleAsyncBuilder<CardList>(
                    future: client.searchCards(Uri.encodeComponent(query)),
                    onLoad: (CardList matchedCards, BuildContext context) =>
                        Expanded(
                      child: ListView.builder(
                          itemCount: matchedCards.data.length,
                          padding: EdgeInsets.zero,
                          itemBuilder: (BuildContext context, int index) =>
                              Text('${matchedCards.data[index].name}')),
                    ),
                  ),
                )
              : Text('Zoeken'),
        ],
      ),
    );
  }
}
