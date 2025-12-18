import 'package:flutter/material.dart';
import '../products/product_carousel_widget.dart';

class ArrivalsSection extends StatelessWidget {
  final String title;
  final List<Widget> products;

  const ArrivalsSection({
    super.key,
    required this.title,
    required this.products,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 12),
        ProductCarouselWidget(
          items: products,
        ),
        const SizedBox(height: 40),
      ],
    );
  }
}
