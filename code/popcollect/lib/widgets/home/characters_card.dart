import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';


class CharacterCard extends StatelessWidget {
  final String name;
  final String image;

  const CharacterCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kCharacterCardPaddingH),
      child: Column(
        children: [
          // IMAGE CARD
          Expanded(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.white,
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: kCharacterImageShadowBlur,
                    offset: Offset(0, kCharacterImageShadowOffsetY),
                  ),
                ],
              ),
              clipBehavior: Clip.hardEdge,
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: kSpacingM),

          // TITLE
          Text(
            name,
            textAlign: TextAlign.center,
            style: kCharacterNameText,
          ),
        ],
      ),
    );
  }
}
