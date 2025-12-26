import 'package:flutter/material.dart';

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

