import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class Selling extends StatefulWidget {
  const Selling({super.key});

  @override
  State<Selling> createState() => _SellingState();
}

class _SellingState extends State<Selling> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: FlutterI18n.translate(context, 'navigation.selling'),
      body: Column(
        children: [
          I18nText('navigation.selling'),
        ],
      ),
    );
  }
}
