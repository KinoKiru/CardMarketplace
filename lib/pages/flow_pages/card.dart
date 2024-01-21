import 'package:card_marketplace/api/card_client.dart';
import 'package:card_marketplace/components/async_builder.dart';
import 'package:card_marketplace/components/bottom_sheet.dart';
import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:card_marketplace/models/magic_card.dart';
import 'package:card_marketplace/utils/parse_symbol.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:iconify_flutter/iconify_flutter.dart';
import 'package:iconify_flutter/icons/material_symbols.dart';

class MagicCardPage extends StatefulWidget {
  const MagicCardPage({super.key, required this.id});
  final String id;

  @override
  State<MagicCardPage> createState() => _MagicCardPageState();
}

class _MagicCardPageState extends State<MagicCardPage> {
  ParseSymbol symbolParser = ParseSymbol();
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
                  copyData: data.uri.toString(),
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
                    Colors.grey.withOpacity(0.2),
                    Colors.black,
                  ],
                  stops: const [0.0, 0.9],
                ).createShader(bounds);
              },
              blendMode: BlendMode.hardLight,
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
                      : const Text('vanilla creature')),
            ),
          ],
        ),
      ),
    );
  }
}
