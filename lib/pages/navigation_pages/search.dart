import 'package:card_marketplace/components/custom_app_bar.dart';
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
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: FlutterI18n.translate(context, 'search.title'),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 45,
              child: TextFormField(
                onChanged: (String value) {},
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
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.zero,
                itemBuilder: (BuildContext context, int index) =>
                    Text('$index')),
          )
        ],
      ),
    );
  }
}
