import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/colors.dart';

class ProductCard extends StatelessWidget {
  final String imagePath;
  final String productName;

  const ProductCard({
    super.key,
    required this.imagePath,
    required this.productName,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: kProductCardWidth,
        height: kProductCardHeight,
        margin: const EdgeInsets.only(
          top: kProductCardMarginTop,
        ),
        decoration: BoxDecoration(
        // Angoli arrotondati
        borderRadius: BorderRadius.circular(kProductCardRadius),
        // Bordo nero
        border: Border.all(
          color: Colors.black12, // Bordo molto sottile o trasparente
          width: kProductCardBorderWidth,
        ),
        // Shadow of the card
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: kProductCardShadowBlur,
            offset: Offset(0, kProductCardShadowOffsetY), // Ombra sotto
          ),
        ],
      ),
        child: ClipRRect( // Usa ClipRRect per ritagliare l'immagine secondo il borderRadius
          borderRadius: BorderRadius.circular(kProductCardRadius),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
    );

  }
}
