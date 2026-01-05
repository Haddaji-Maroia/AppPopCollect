import 'package:flutter/material.dart';
import 'package:dto/dto.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';

class CollectionDetailPage extends StatelessWidget {
  final AppCollection collection;

  const CollectionDetailPage({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(collection.name, style: kCardTitleText),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Padding(
        padding: const EdgeInsets.all(kPagePadding),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(kPaddingXL),
              decoration: const BoxDecoration(
                color: Color(0xFFF5F7FA),
                shape: BoxShape.circle,
              ),
              child: const Text(
                '📦',
                style: TextStyle(fontSize: kProgressIconSize),
              ),
            ),

            const SizedBox(height: kSpacingXL),

            // Title
            Text(
              'Working on ${collection.name}...',
              textAlign: TextAlign.center,
              style: kSectionTitleText,
            ),

            const SizedBox(height: kSpacingS),

            // Description
            Text(
              "We are currently organizing the shelf for your ${collection.name} figures. Stay tuned for the next update!",
              textAlign: TextAlign.center,
              style: kBodyText.copyWith(color: Colors.grey),
            ),

            const SizedBox(height: kSpacingXL),

            // Button go back
            SizedBox(
              width: kArtistCardWidth + kPaddingXL,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF587DBD),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kRadiusL),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: kPaddingM),
                ),
                child: const Text("Go Back", style: kButtonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}