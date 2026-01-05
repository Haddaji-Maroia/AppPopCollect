import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import 'whats_new_card.dart';

class WhatsNewSection extends StatelessWidget {
  const WhatsNewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("What's New 🔥", style: kSectionTitle),
          ],
        ),

        const SizedBox(height: kVerticalSpacingM),

        const WhatsNewCard(),
      ],
    );
  }
}
