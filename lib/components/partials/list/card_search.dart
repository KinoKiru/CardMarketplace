import 'package:card_marketplace/models/magic_card.dart';
import 'package:flutter/material.dart';

class CardSearchListItem extends StatelessWidget {
  const CardSearchListItem({super.key, required this.card});
  final MagicCard card;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.network(card.imageUris.normal.toString()),
      ],
    );
  }
}
