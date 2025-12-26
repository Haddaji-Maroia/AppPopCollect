import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import '../../constants/colors.dart';

class RecentActivitySection extends StatelessWidget {
  const RecentActivitySection({super.key});

  Widget _activityCard({
    required String title,
    required String subtitle,
    required String time,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: kSpacingS),
      padding: const EdgeInsets.all(kPaddingM),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(color: kCardBorderColor),
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.purple.shade200,
              borderRadius: BorderRadius.circular(kBorderRadiusS),
            ),
          ),
          const SizedBox(width: kSpacingM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: kBodyBoldText),
                const SizedBox(height: kSpacingXS),
                Text(subtitle, style: kBodyText),
                const SizedBox(height: kSpacingXS),
                Text(time, style: kCaptionText),
              ],
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Recent Activity', style: kSectionTitleText),
        const SizedBox(height: kSpacingM),

        _activityCard(
          title: 'New figure added',
          subtitle: 'Vampire – Monsters Carnival',
          time: '2 days ago',
        ),
        _activityCard(
          title: 'Secret figure found!',
          subtitle: 'Witch Cat – City of Mercy',
          time: '1 week ago',
        ),
        _activityCard(
          title: 'Achievement unlocked',
          subtitle: 'Multi-Series Pro',
          time: '2 weeks ago',
        ),
      ],
    );
  }
}
