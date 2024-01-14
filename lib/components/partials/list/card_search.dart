import 'package:card_marketplace/models/magic_card.dart';
import 'package:flutter/material.dart';

class CardSearchListItem extends StatelessWidget {
  const CardSearchListItem({super.key, required this.card});
  final MagicCard card;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => print(card.id),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.network(
              card.imageUris != null
                  ? card.imageUris!.artCrop.toString()
                  : card.imageUris!.normal.toString(),
              width: 150,
              height: 115,
            ),
            Text(card.name),
            Text(card.releasedAt)
          ],
        ),
      ),
    );
  }
}
