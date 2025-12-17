import 'package:flutter/material.dart';
import 'product_card.dart';

class ProductItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const ProductItem({
    super.key,
    required this.imagePath,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ProductCard(
          imagePath: imagePath,
          productName: title,
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
