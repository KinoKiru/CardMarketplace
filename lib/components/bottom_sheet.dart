import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class CustomBottomSheet extends StatelessWidget {
  const CustomBottomSheet({super.key, required this.copyData});
  final String copyData;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Scaffold(
        body: Column(
          children: [
            ListTile(
              onTap: () async {
                await Clipboard.setData(
                  ClipboardData(
                    text: copyData,
                  ),
                ).then(
                  (_) => ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      behavior: SnackBarBehavior.floating,
                      content: I18nText("sheet.copied"),
                    ),
                  ),
                );
              },
              leading: Iconify(MaterialSymbols.share,
                  color: Theme.of(context).colorScheme.onBackground),
              title: I18nText('sheet.share'),
            )
          ],
        ),
      ),
    );
  }
}
