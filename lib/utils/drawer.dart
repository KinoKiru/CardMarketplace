import 'package:card_marketplace/models/navigation.dart';
import 'package:card_marketplace/pages/drawer_pages/account.dart';
import 'package:card_marketplace/pages/drawer_pages/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

List<NavigationItem> getAccountItems(BuildContext context) {
  return [
    NavigationItem(
      I18nText('drawer.account'),
      Iconify(
        MaterialSymbols.person_2_outline_rounded,
        color: Theme.of(context).colorScheme.onBackground,
      ),
      const Account(),
    ),
    NavigationItem(
      I18nText('drawer.settings'),
      Iconify(
        MaterialSymbols.settings_outline_rounded,
        color: Theme.of(context).colorScheme.onBackground,
      ),
      const Settings(),
    )
  ];
}
