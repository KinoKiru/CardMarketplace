import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});

  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: FlutterI18n.translate(context, 'navigation.cart'),
      body: Column(
        children: [
          I18nText('navigation.cart'),
        ],
      ),
    );
  }
}
