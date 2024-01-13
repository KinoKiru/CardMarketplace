import 'package:card_marketplace/pages/navigation_pages/buying.dart';
import 'package:card_marketplace/pages/navigation_pages/cart.dart';
import 'package:card_marketplace/pages/navigation_pages/home.dart';
import 'package:card_marketplace/pages/navigation_pages/search.dart';
import 'package:card_marketplace/pages/navigation_pages/selling.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);

  List<PersistentBottomNavBarItem> _getNavItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        icon: Iconify(
          MaterialSymbols.home_app_logo,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Iconify(
          MaterialSymbols.shopping_cart,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Iconify(
          MaterialSymbols.search,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Iconify(
          MaterialSymbols.attach_money_rounded,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      ),
      PersistentBottomNavBarItem(
        icon: Iconify(
          MaterialSymbols.money_off_rounded,
          color: Theme.of(context).colorScheme.onBackground,
        ),
      )
    ];
  }

  List<Widget> _getScreens() {
    return const [Home(), Cart(), Search(), Selling(), Buying()];
  }

  @override
  Widget build(BuildContext context) {
    return PersistentTabView(
      context,
      controller: _controller,
      items: _getNavItems(context),
      confineInSafeArea: true,
      popAllScreensOnTapAnyTabs: true,
      popActionScreens: PopActionScreensType.all,
      navBarStyle: NavBarStyle.style15,
      screens: _getScreens(),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,
    );
  }
}
