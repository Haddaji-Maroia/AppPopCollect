import 'package:flutter/material.dart';
import '../constants/fonts.dart';
import '../constants/sizes.dart';

class WishlistPage extends StatelessWidget {
  static const routeName = '/wishlist';
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    const double kEmptyStateIconSize = 80.0;

    return Scaffold(
      backgroundColor: Colors.white,
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
              Icon(
                Icons.favorite_border_rounded,
                size: kEmptyStateIconSize,
                color: Colors.grey.shade300,
              ),

              const SizedBox(height: kSpacingM),

              const Text(
                'Your Wishlist is empty',
                style: kSectionTitle,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: kSpacingS),

              const Text(
                'Tap the heart icon on any figure to add it to your wishlist and keep track of what you want to find next!',
                style: kBodyText,
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: kSpacingXL),

              SizedBox(
                width: double.infinity,
                height: kButtonHeight,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/homePage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(kBorderRadiusButton), // USA: 30.0
                    ),
                  ),
                  child: const Text('Explore Collections', style: kButtonText), // USA: kButtonText
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}