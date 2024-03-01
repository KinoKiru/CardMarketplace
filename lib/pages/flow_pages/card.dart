import 'package:card_marketplace/api/card_client.dart';
import 'package:card_marketplace/components/async_builder.dart';
import 'package:card_marketplace/components/bottom_sheet.dart';
import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:card_marketplace/models/magic_card.dart';
import 'package:card_marketplace/utils/parse_symbol.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_i18n/flutter_i18n.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/akar_icons.dart';
import 'package:iconify_flutter/icons/ion.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class MagicCardPage extends StatefulWidget {
  const MagicCardPage({super.key, required this.id});
  final String id;

  @override
  State<MagicCardPage> createState() => _MagicCardPageState();
}

class _MagicCardPageState extends State<MagicCardPage> {
  ParseSymbol symbolParser = ParseSymbol();

  Widget getIcon(String data) {
    if (data == 'legal') {
      return Iconify(Ion.checkmark_round, color: Colors.green.shade600);
    } else if (data == 'not_legal') {
      return Iconify(AkarIcons.cross, color: Colors.red.shade600);
    } else {
      return Iconify(Ion.checkmark_round, color: Colors.orange.shade600);
    }
  }

  @override
  Widget build(BuildContext context) {
    Dio dio = Dio();
    final client = CardClient(dio);
    return SimpleAsyncBuilder(
      future: client.getCardById(widget.id),
      onLoad: (MagicCard data, BuildContext context) => CustomAppBar(
        title: data.name,
        enableDrawer: false,
        appBarActions: [
          InkWell(
            onTap: () {
              showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) => CustomBottomSheet(
                  items: [
                    ListTile(
                      onTap: () async {
                        await Clipboard.setData(
                          ClipboardData(
                            text: data.scryfallUri.toString(),
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
                    ),
                  ],
                ),
              );
            },
            child: Iconify(
              MaterialSymbols.more_vert,
              color: Theme.of(context).colorScheme.onBackground,
            ),
          )
        ],
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ShaderMask(
              shaderCallback: (bounds) {
                return LinearGradient(
                  begin: FractionalOffset.topCenter,
                  end: FractionalOffset.bottomCenter,
                  colors: [
                    Theme.of(context).colorScheme.onBackground.withOpacity(0.1),
                    Colors.black
                  ],
                  stops: const [0.0, 0.9],
                ).createShader(bounds);
              },
              blendMode: BlendMode.srcOver,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 225,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                      data.imageUris != null
                          ? data.imageUris!.artCrop.toString()
                          : data.defaultImage.toString(),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      data.manaCost != null && data.manaCost!.isNotEmpty
                          ? SimpleAsyncBuilder(
                              future: symbolParser.parseSymbols(data.manaCost!),
                              onLoad:
                                  (List<Widget> data, BuildContext context) =>
                                      Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Text(
                                    "Mana cost: ",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .background,
                                      fontSize: 20,
                                    ),
                                  ),
                                  ...data
                                ],
                              ),
                            )
                          : const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [Text("No mana cost")],
                            ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            data.toughness != null
                                ? "${data.power}/${data.toughness}"
                                : "",
                            style: TextStyle(
                              color: Theme.of(context).colorScheme.background,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              height: 200,
              width: MediaQuery.of(context).size.width * 0.9,
              decoration: const BoxDecoration(
                  border: Border.symmetric(
                    vertical: BorderSide(color: Colors.black45),
                    horizontal: BorderSide(color: Colors.black45),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: data.oracleText != null
                    ? SimpleAsyncBuilder(
                        future: symbolParser.parseSymbols(data.oracleText!),
                        onLoad: (data, context) => Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            children: data,
                          ),
                        ),
                      )
                    : const Text('vanilla creature'),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Legalities",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: 3.3,
                children: List.generate(
                  data.legalities.length,
                  (index) => Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          border: Border.fromBorderSide(
                            BorderSide(color: Colors.black),
                          ),
                          borderRadius: BorderRadius.all(
                            Radius.circular(8.0),
                          ),
                        ),
                        child: Row(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(5.0),
                              child:
                                  Text(data.legalities.keys.elementAt(index)),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                color: Colors.grey.shade400,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: getIcon(
                                  data.legalities.values.elementAt(index),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Flavor text",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
