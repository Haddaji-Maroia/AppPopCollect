import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import '../../constants/colors.dart';

class ProfileStats extends StatelessWidget {
  final int figures;
  final int secret;
  final double value;

  const ProfileStats({
    super.key,
    required this.figures,
    required this.secret,
    required this.value,
  });

  Widget _statCard({
    required IconData icon,
    required String label,
    required String value,
    Color? iconColor,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(kPaddingM),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kBorderRadius),
          border: Border.all(color: kCardBorderColor),
        ),
        child: Column(
          children: [
            Icon(icon, color: iconColor ?? kPrimaryColor),
            const SizedBox(height: kSpacingS),
            Text(value, style: kStatValueText),
            const SizedBox(height: kSpacingXS),
            Text(label, style: kStatLabelText),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _statCard(
          icon: Icons.inventory_2_outlined,
          label: 'Figures',
          value: figures.toString(),
        ),
        const SizedBox(width: kSpacingS),
        _statCard(
          icon: Icons.star,
          label: 'Secret',
          value: secret.toString(),
          iconColor: Colors.purple,
        ),
        const SizedBox(width: kSpacingS),
        _statCard(
          icon: Icons.euro,
          label: 'Value',
          value: '€${value.toStringAsFixed(0)}',
          iconColor: Colors.green,
        ),
      ],
    );
  }
}
