import 'package:card_marketplace/models/magic_card.dart';
import 'package:card_marketplace/pages/flow_pages/card_page.dart';
import 'package:flutter/material.dart';

class CardSearchListItem extends StatelessWidget {
  const CardSearchListItem({super.key, required this.card});
  final MagicCard card;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (BuildContext context) => MagicCardPage(id: card.id),
        ),
      ),
      child: SizedBox(
        height: 500,
        child: Card(
          clipBehavior: Clip.hardEdge,
          child: Column(
            children: [
              Image.network(
                card.imageUris!.artCrop.toString(),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(card.name),
              ),
              Text(card.releasedAt)
            ],
          ),
        ),
      ),
    );
  }
}
