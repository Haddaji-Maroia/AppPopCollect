import 'package:flutter/material.dart';


class WishlistPage extends StatelessWidget {
  static const routeName = '/wishlist';
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blueAccent,
      child: Center(
        child: Text('Wishlist Page'),
      ),
    );
  }
}
