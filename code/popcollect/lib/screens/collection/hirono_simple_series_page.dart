import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/hirono/progress_card.dart';
import '../../widgets/common/placeholder_card.dart';

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
          Hero(
            tag: title,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(kRadiusM),
              child: Image.asset(
                image,
                height: kHeroImageHeight,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: kSpacingM),
          const ProgressCard(
            title: 'Collection Progress',
            owned: kInitialOwnedValue,
            total: kHironoSeriesDefaultTotal,
          ),
          const SizedBox(height: kSpacingL),

          const PlaceholderCard(
            title: "Characters coming soon...",
            subtitle: "We are updating the database for this collection.",
          ),
        ],
      ),
    );
  }
}