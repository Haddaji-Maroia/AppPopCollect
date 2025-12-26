import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import 'badge_card.dart';

class BadgesSection extends StatelessWidget {
  const BadgesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Badges', style: kSectionTitle),
            GestureDetector(
              onTap: () {
                // TODO: navigate to all badges page
              },
              child: const Text('View All', style: kLinkText),
            ),
          ],
        ),

        const SizedBox(height: kSpacingM),

        // BADGES
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: const [
              BadgeCard(
                icon: Icons.flag,
                title: 'First\nCollection',
              ),
              SizedBox(width: kSpacingM),
              BadgeCard(
                icon: Icons.star,
                title: 'Secret\nHunter',
              ),
              SizedBox(width: kSpacingM),
              BadgeCard(
                icon: Icons.palette,
                title: 'Multi-Series\nPro',
              ),
            ],
          ),
        ),
      ],
    );
  }
}
