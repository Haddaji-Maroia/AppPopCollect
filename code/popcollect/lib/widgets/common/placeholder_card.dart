import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';

class PlaceholderCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final IconData icon;

  const PlaceholderCard({
    super.key,
    required this.title,
    required this.subtitle,
    this.icon = Icons.inventory_2_outlined,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kPaddingL),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(kRadiusM),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        children: [
          Icon(
            icon,
            size: kIconL,
            color: Colors.grey,
          ),
          const SizedBox(height: kSpacingS),
          Text(
            title,
            style: kBodyBoldText.copyWith(color: Colors.grey.shade600),
          ),
          const SizedBox(height: kSpacingXS),
          Text(
            subtitle,
            textAlign: TextAlign.center,
            style: kCaptionText,
          ),
        ],
      ),
    );
  }
}