import 'package:card_marketplace/models/navigation.dart';
import 'package:card_marketplace/utils/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class CustomNavigationDrawer extends StatefulWidget {
  const CustomNavigationDrawer({super.key});

  @override
  State<CustomNavigationDrawer> createState() => _CustomNavigationDrawerState();
}

class _CustomNavigationDrawerState extends State<CustomNavigationDrawer> {
  @override
  Widget build(BuildContext context) {
    List<NavigationItem> accountItems = getAccountItems(context);
    List<NavigationItem> allRoutes = accountItems;
    return NavigationDrawer(
      indicatorColor: Colors.transparent,
      onDestinationSelected: (int selectedScreen) => {
        // Firstly pop, this will close the drawer
        Navigator.pop(context),
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => allRoutes[selectedScreen].screen,
            ))
      },
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(18, 16, 16, 10),
          child: Text(
            FlutterI18n.translate(context, 'drawer.account'),
            style: const TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
          ),
        ),
        ...accountItems.map(
          (e) => NavigationDrawerDestination(
            icon: e.icon,
            label: e.label,
          ),
        ),
      ],
    );
  }
}
