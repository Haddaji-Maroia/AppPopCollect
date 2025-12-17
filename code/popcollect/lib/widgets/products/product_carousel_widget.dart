import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/products/product_card.dart';
import 'package:popcollect2/widgets/products/product_item.dart';

class ProductCarouselWidget extends StatelessWidget {
  final List<Widget> items;

  const ProductCarouselWidget({
    super.key,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items,
      ),
    );
  }
}

