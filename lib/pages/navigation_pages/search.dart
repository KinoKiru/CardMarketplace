import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: FlutterI18n.translate(context, 'navigation.search'),
      body: Column(
        children: [
          I18nText('navigation.search'),
        ],
      ),
    );
  }
}
