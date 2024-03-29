import 'package:card_marketplace/api/card_client.dart';
import 'package:card_marketplace/components/async_builder.dart';
import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:card_marketplace/components/partials/list/card_search.dart';
import 'package:card_marketplace/models/list_wrapper.dart';
import 'package:card_marketplace/models/magic_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

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
    final client = CardClient(dio);

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
              ? SimpleAsyncBuilder<ListWrapper<MagicCard>>(
                  future: client.searchCards(
                    Uri.encodeComponent(
                      query.replaceAll(RegExp(r'\s+'), ''),
                    ),
                  ),
                  onLoad: (ListWrapper<MagicCard> matchedCards,
                          BuildContext context) =>
                      Expanded(
                    child: GridView.count(
                      childAspectRatio: 0.9,
                      crossAxisCount: 2,
                      children: List.generate(
                        matchedCards.data.length,
                        (index) => CardSearchListItem(
                          card: matchedCards.data[index],
                        ),
                      ),
                    ),
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: I18nText("search.empty"),
                ),
        ],
      ),
    );
  }
}
