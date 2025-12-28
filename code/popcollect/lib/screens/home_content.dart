import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/home/artists_section.dart';

import '../widgets/home/charaters_section.dart';
import '../constants/sizes.dart';
import '../widgets/home/home_header.dart';
import '../widgets/home/suggested_next_card.dart';
import '../widgets/home/total_progress_card.dart';
import '../widgets/home/whats_new_section.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          // HEADER
          SizedBox(
            height: 340,
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: kSpacingXL,
                    bottom: kSpacingXL * 2,
                    left: kPagePadding,
                    right: kPagePadding,
                  ),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF3B5BFF),
                        Color(0xFF7C3AED),
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const SafeArea(
                    bottom: false,
                    child: HomeHeader(username: 'sophia27'),
                  ),
                ),

                Positioned(
                  left: kPagePadding,
                  right: kPagePadding,
                  bottom: -kSpacingM,
                  child: const TotalProgressCard(),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(kPagePadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: kSpacingXL),

                WhatsNewSection(),
                SizedBox(height: kSpacingL),

                SuggestedNextCard(),
                SizedBox(height: kSpacingXL),

                CharactersSection(),
                SizedBox(height: kSpacingXL),

                ArtistsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
