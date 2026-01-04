import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/hirono/progress_card.dart';

class HironoSimpleSeriesPage extends StatelessWidget {
  final String title;
  final String image;

  const HironoSimpleSeriesPage({
    super.key,
    required this.title,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text(title, style: kSectionTitle),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(kPagePadding),
        children: [
          // IMAGE
          Hero(
            tag: title,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kRadiusM),
              child: Image.asset(
                image,
                height: 180,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),

          const SizedBox(height: kSpacingM),

          // PROGRESS CARD
          const ProgressCard(
            title: 'Collection Progress',
            owned: 0,
            total: 12,
          ),

          const SizedBox(height: kSpacingL),

          // This is a placeholder for the future grid
          Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.grey.shade100,
              borderRadius: BorderRadius.circular(kRadiusM),
              border: Border.all(color: Colors.grey.shade300),
            ),
            child: Column(
              children: [
                const Icon(Icons.inventory_2_outlined, size: 40, color: Colors.grey),
                const SizedBox(height: kSpacingS),
                Text(
                  "Characters coming soon...",
                  style: kBody.copyWith(color: Colors.grey.shade600),
                ),
                const SizedBox(height: kSpacingXS),
                Text(
                  "We are updating the database for this collection.",
                  textAlign: TextAlign.center,
                  style: kCaptionText,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}