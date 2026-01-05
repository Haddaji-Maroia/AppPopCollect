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
        title: Text(collection.name, style: kTitleText.copyWith(fontSize: 18)),
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
              padding: const EdgeInsets.all(30),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F7FA),
                shape: BoxShape.circle,
              ),
              child: const Text(
                '📦',
                style: TextStyle(fontSize: 60),
              ),
            ),

            const SizedBox(height: kSpacingXL),

            // Title
            Text(
              'Working on ${collection.name}...',
              textAlign: TextAlign.center,
              style: kTitleText.copyWith(fontSize: 22),
            ),

            const SizedBox(height: kSpacingS),

            // Description
            Text(
              "We are currently organizing the shelf for your ${collection.name} figures. Stay tuned for the next update!",
              textAlign: TextAlign.center,
              style: kCaptionText.copyWith(fontSize: 15),
            ),

            const SizedBox(height: kSpacingXL),

            // Button go back
            SizedBox(
              width: 200,
              child: ElevatedButton(
                onPressed: () => Navigator.pop(context),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF587DBD),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(kRadiusL),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 15),
                ),
                child: const Text("Go Back"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}