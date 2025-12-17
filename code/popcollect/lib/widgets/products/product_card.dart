import 'package:flutter/material.dart';

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
        width: 150.0,
        height: 180.0,
        margin: EdgeInsets.only(top: 20.0),
        decoration: BoxDecoration(
        // Angoli arrotondati
        borderRadius: BorderRadius.circular(15.0),
        // Bordo nero
        border: Border.all(
          color: Colors.black12, // Bordo molto sottile o trasparente
          width: 0.5,
        ),
        // Shadow of the card
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10.0,
            offset: Offset(0, 5), // Ombra sotto
          ),
        ],
      ),
        child: ClipRRect( // Usa ClipRRect per ritagliare l'immagine secondo il borderRadius
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            imagePath,
            fit: BoxFit.cover,
          ),
        ),
    );

  }
}
