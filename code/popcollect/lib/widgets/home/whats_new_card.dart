import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';

class WhatsNewCard extends StatelessWidget {
  const WhatsNewCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kHorizontalPadding),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFFD946EF), Color(0xFF9333EA)],
        ),
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔼 TOP ROW: TEXT + IMAGE
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // LEFT: TEXT
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // BADGE
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12,
                        vertical: 4,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: const Text(
                        'NEW RELEASE',
                        style: kBadgeText,
                      ),
                    ),

                    const SizedBox(height: kVerticalSpacingM),

                    const Text(
                      'SKULLPANDA',
                      style: kWhiteTitle,
                    ),

                    const SizedBox(height: 4),

                    const Text(
                      'Christmas Special 2024',
                      style: kWhiteSubtitle,
                    ),
                  ],
                ),
              ),

              const SizedBox(width: kHorizontalPadding),

              // RIGHT: IMAGE
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/additions/pandaWednesday.jpg',
                  width: 120,
                  height: 120,
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),

          const SizedBox(height: kVerticalSpacingL),

          // 🔽 FULL WIDTH BUTTON
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                foregroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onPressed: () {},
              child: const Text('Add to Wishlist'),
            ),
          ),
        ],
      ),
    );
  }
}


