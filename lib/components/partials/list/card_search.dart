import 'package:card_marketplace/models/magic_card.dart';
import 'package:card_marketplace/pages/flow_pages/card.dart';
import 'package:flutter/material.dart';

class CardSearchListItem extends StatelessWidget {
  const CardSearchListItem({super.key, required this.card});
  final MagicCard card;

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => MagicCardPage(id: card.id),
          ),
        ),
        child: Column(
          children: [
            Image.network(card.imageUris != null
                ? card.imageUris!.artCrop.toString()
                : card.defaultImage),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(card.name),
            ),
            Text(card.releasedAt)
          ],
        ),
      ),
    );
  }
}
