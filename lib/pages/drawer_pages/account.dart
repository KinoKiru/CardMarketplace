import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: FlutterI18n.translate(context, 'drawer.account'),
      enableDrawer: false,
      body: Column(
        children: [
          I18nText('drawer.account'),
        ],
      ),
    );
  }
}
