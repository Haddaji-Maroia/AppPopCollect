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
    required Color accentColor,
  }) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: kPaddingM, horizontal: kPaddingS),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16), // Più arrotondato
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.04),
              blurRadius: 10,
              offset: const Offset(0, 4),
            ),
          ],
          border: Border.all(color: Colors.grey[50]!), // Bordo quasi invisibile
        ),
        child: Column(
          children: [
            // Icona con cerchio di sfondo sfumato
            Container(
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                color: accentColor.withOpacity(0.1),
                shape: BoxShape.circle,
              ),
              child: Icon(icon, color: accentColor, size: 20),
            ),
            const SizedBox(height: kSpacingS),
            Text(
                value,
                style: kStatValueText.copyWith(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                )
            ),
            const SizedBox(height: 2),
            Text(
                label.toUpperCase(),
                style: kStatLabelText.copyWith(
                  fontSize: 10,
                  letterSpacing: 0.5,
                  color: Colors.grey[500],
                )
            ),
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
          icon: Icons.grid_view_rounded,
          label: 'Figures',
          value: figures.toString(),
          accentColor: Colors.blueAccent,
        ),
        const SizedBox(width: kSpacingS),
        _statCard(
          icon: Icons.auto_awesome,
          label: 'Secret',
          value: secret.toString(),
          accentColor: Colors.purpleAccent,
        ),
        const SizedBox(width: kSpacingS),
        _statCard(
          icon: Icons.euro_symbol_rounded,
          label: 'Value',
          value: '€${value.toStringAsFixed(0)}',
          accentColor: Colors.teal,
        ),
      ],
    );
  }
}