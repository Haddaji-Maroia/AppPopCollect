import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';


class ActivityCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final String date;
  final IconData icon;
  final Color iconBg;

  const ActivityCard({
    super.key,
    required this.title,
    required this.subtitle,
    required this.date,
    required this.icon,
    required this.iconBg,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: kSpacingM),
      padding: const EdgeInsets.all(kPaddingM),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: kActivityIconBoxSize,
            height: kActivityIconBoxSize,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(kBorderRadiusS),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: kActivityIconSize,
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
                Text(date, style: kCaptionText),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
