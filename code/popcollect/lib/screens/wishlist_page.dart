import 'package:flutter/material.dart';
import '../constants/fonts.dart';
import '../constants/sizes.dart';

class WishlistPage extends StatelessWidget {
  static const routeName = '/wishlist';
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wishlist', style: kSectionTitle),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(kPagePadding),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ICONA O ILLUSTRAZIONE
              Icon(
                Icons.favorite_border_rounded,
                size: 80,
                color: Colors.grey.shade300,
              ),

              const SizedBox(height: kSpacingM),

              // TESTO PRINCIPALE
              const Text(
                'Your Wishlist is empty',
                style: kTitleText,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: kSpacingS),

              // SOTTOTITOLO
              Text(
                'Tap the heart icon on any figure to add it to your wishlist and keep track of what you want to find next!',
                style: kSecondaryText,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: kSpacingXL),

              // BOTTONE PER TORNARE ALLA HOME (OPZIONALE)
              ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/collection');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kRadiusM)),
                ),
                child: const Text('Explore Collections'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}