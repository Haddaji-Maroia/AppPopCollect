import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';

class SuggestedNextCard extends StatelessWidget {
  const SuggestedNextCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: const [
            Text('Suggested Next', style: kSectionTitle),
            SizedBox(width: 6),
            Icon(Icons.lightbulb_outline, size: 18),
          ],
        ),
        const SizedBox(height: kVerticalSpacingS),

        Container(
          padding: const EdgeInsets.all(kHorizontalPadding),
          decoration: BoxDecoration(
            color: const Color(0xFFEAF4FF),
            borderRadius: BorderRadius.circular(kBorderRadius),
            border: Border.all(
              color: const Color(0xFFB6DAFF),
              width: 1,
            ),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Immagine
                  Container(
                    width: 64,
                    height: 64,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      image: const DecorationImage(
                        image: AssetImage('assets/images/additions/mercyHirono.jpeg'),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),

                  const SizedBox(width: kHorizontalPadding),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Complete City of Mercy',
                          style: kCardTitle,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Only 2 figures missing!',
                          style: kSubtitleText,
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              const SizedBox(height: kVerticalSpacingS),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Progress'),
                  Text(' 5 / 7'),
                ],
              ),

              const SizedBox(height: 6),

              // progress bar
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: const LinearProgressIndicator(
                  value: 5 / 7,
                  minHeight: 8,
                  backgroundColor: Colors.white,
                  valueColor: AlwaysStoppedAnimation<Color>(
                    Color(0xFF5B7FFF),
                  ),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
