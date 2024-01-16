import 'package:card_marketplace/api/card_client.dart';
import 'package:card_marketplace/components/async_builder.dart';
import 'package:card_marketplace/components/custom_app_bar.dart';
import 'package:card_marketplace/models/magic_card.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class MagicCardPage extends StatefulWidget {
  const MagicCardPage({super.key, required this.id});
  final String id;

  @override
  State<MagicCardPage> createState() => _MagicCardPageState();
}

class _MagicCardPageState extends State<MagicCardPage> {
  @override
  Widget build(BuildContext context) {
    Dio dio = Dio();
    final client = CardClient(dio);
    return SimpleAsyncBuilder(
      future: client.getCardById(widget.id),
      onLoad: (MagicCard data, BuildContext context) => CustomAppBar(
        title: data.name,
        enableDrawer: false,
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
              blendMode: BlendMode.srcATop,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 225,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: NetworkImage(
                      data.imageUris != null
                          ? data.imageUris!.artCrop.toString()
                          : data.imageUris!.large.toString(),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              height: 200,
              width: 600,
              decoration: const BoxDecoration(
                  border: Border.symmetric(
                    vertical: BorderSide(color: Colors.black45),
                    horizontal: BorderSide(color: Colors.black45),
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child: Center(
                child: Text(
                  data.oracleText ?? 'Vanilla creature',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
