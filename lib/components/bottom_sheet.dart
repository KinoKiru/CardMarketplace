import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key, required this.items});
  final List<Widget> items;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Scaffold(
        body: Column(
          children: this.items,
        ),
      ),
    );
  }
}
