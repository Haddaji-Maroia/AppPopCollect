import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';

class BadgeCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const BadgeCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: kBadgeCardWidth,
      padding: const EdgeInsets.all(kSpacingM),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kBorderRadius),
        border: Border.all(
          color: const Color(0xFFF5C84C),
          width: kBorderWidthThin,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: kBadgeIconBoxSize,
            height: kBadgeIconBoxSize,
            decoration: BoxDecoration(
              color: const Color(0xFFFFA726),
              borderRadius: BorderRadius.circular(kBorderRadiusS),
            ),
            child: Icon(
              icon,
              color: Colors.white,
              size: kBadgeIconSize,
            ),
          ),

          const SizedBox(height: kSpacingS),

          Text(
            title,
            style: kBadgeTitleText,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
