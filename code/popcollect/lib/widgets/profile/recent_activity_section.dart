import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import 'activity_card.dart';

class RecentActivitySection extends StatelessWidget {
  const RecentActivitySection({super.key});


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Recent Activity', style: kSectionTitleText),
        const SizedBox(height: kSpacingM),

        const ActivityCard(
          icon: Icons.check,
          iconBg: Colors.green,
          title: 'New figure added',
          subtitle: 'Vampire – Monsters Carnival',
          date: '2 days ago',
        ),
        const ActivityCard(
          icon: Icons.star,
          iconBg: Colors.amber,
          title: 'Secret figure found!',
          subtitle: 'Witch Cat – City of Mercy',
          date: '1 week ago',
        ),
        const ActivityCard(
          icon: Icons.emoji_events,
          iconBg: Colors.purple,
          title: 'Achievement unlocked',
          subtitle: 'Multi-Series Pro',
          date: '2 weeks ago',
        ),
      ],
    );
  }
}
