import 'package:card_marketplace/components/partials/custom_navigation_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_i18n/flutter_i18n.dart';

class CustomAppBar extends StatefulWidget {
  const CustomAppBar({
    super.key,
    this.title = 'basic.no_key',
    this.enableDrawer = true,
    this.floatingActionButton,
    required this.body,
  });
  final String title;
  final bool enableDrawer;
  final Widget body;
  final Widget? floatingActionButton;

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: I18nText(widget.title),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: widget.body,
      endDrawer: widget.enableDrawer ? const CustomNavigationDrawer() : null,
      floatingActionButton: widget.floatingActionButton,
    );
  }
}
