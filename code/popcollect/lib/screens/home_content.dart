import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/home/artists_section.dart';
import '../widgets/home/active_collections_section.dart';
import '../widgets/home/charaters_section.dart';
import '../constants/sizes.dart';
import '../widgets/home/home_header.dart';
import '../widgets/home/stats_row.dart';
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
          // HEADER con nome e avatar
          SizedBox(
            height: 280,
            child: Stack(
              clipBehavior: Clip.none,
              children: [

                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(
                    top: kVerticalSpacingXL,
                    bottom: kVerticalSpacingL,
                    left: kHorizontalPadding,
                    right: kHorizontalPadding,
                  ),
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF3B5BFF), Color(0xFF7C3AED)],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                  ),
                  child: const SafeArea(
                    bottom: false,
                    child: HomeHeader(username: 'sophia27'),
                  ),
                ),

                // Avatar
                Positioned(
                  top: kVerticalSpacingXL,
                  right: kHorizontalPadding,
                  child: CircleAvatar(
                    radius: 36,
                    backgroundImage: AssetImage('assets/images/avatar/avatar.jpeg'),
                  ),
                ),

                Positioned(
                  left: kHorizontalPadding,
                  right: kHorizontalPadding,
                  bottom: -kVerticalSpacingM,
                  child: const TotalProgressCard(),
                ),
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(kHorizontalPadding),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                SizedBox(height: kVerticalSpacingXL),

                StatsRow(),
                SizedBox(height: kVerticalSpacingL),

                WhatsNewSection(),
                SizedBox(height: kVerticalSpacingL),

                SuggestedNextCard(),
                SizedBox(height: kVerticalSpacingXL),

                ActiveCollectionsSection(),
                SizedBox(height: kVerticalSpacingXL),

                CharactersSection(),
                SizedBox(height: kVerticalSpacingXL),

                ArtistsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

