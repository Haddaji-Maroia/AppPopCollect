import 'package:flutter/material.dart';

import '../../constants/fonts.dart';
import '../../constants/sizes.dart';


class ProfileStatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  const ProfileStatCard({
    super.key,
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(kPaddingM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Column(
          children: [
            Icon(icon, color: color),
            const SizedBox(height: 8),
            Text(value, style: kStatValueText),
            Text(label, style: kStatLabelText),
          ],
        ),
      ),
    );
  }
}
