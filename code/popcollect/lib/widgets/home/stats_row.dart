import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';

class StatsRow extends StatelessWidget {
  const StatsRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Expanded(
          child: _StatCard(
            icon: Icons.euro,
            value: '€375',
            label: 'Total Value',
            color: Color(0xFFE8F8F1),
          ),
        ),
        SizedBox(width: kHorizontalPaddingS),
        Expanded(
          child: _StatCard(
            icon: Icons.star,
            value: '3',
            label: 'Secrets',
            color: Color(0xFFF3E8FD),
          ),
        ),
        SizedBox(width: kHorizontalPaddingS),
        Expanded(
          child: _StatCard(
            icon: Icons.collections_bookmark,
            value: '0/12',
            label: 'Series Done',
            color: Color(0xFFEAF1FF),
          ),
        ),
      ],
    );
  }
}

class _StatCard extends StatelessWidget {
  final IconData icon;
  final String value;
  final String label;
  final Color color;

  const _StatCard({
    required this.icon,
    required this.value,
    required this.label,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kHorizontalPadding),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 22),
          const SizedBox(height: kVerticalSpacingS),
          Text(value, style: kStatValueText),
          const SizedBox(height: 2),
          Text(label, style: kStatLabelText),
        ],
      ),
    );
  }
}
