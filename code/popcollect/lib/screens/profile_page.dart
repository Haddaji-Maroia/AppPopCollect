import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/profile/badges_section.dart';
import '../constants/sizes.dart';
import '../constants/fonts.dart';
import '../widgets/profile/profile_stats.dart';
import '../widgets/profile/recent_activity_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              //  HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.logout),
                    onPressed: () {
                      // TODO logout Firebase
                    },
                  ),
                ],
              ),

              const SizedBox(height: kSpacingM),

              // AVATAR
              const CircleAvatar(
                radius: kProfileAvatarRadius,
                backgroundImage: AssetImage(
                  'assets/images/avatar/avatar.jpeg',
                ),
              ),

              const SizedBox(height: kSpacingS),

              // USERNAME
              Text(
                'sophia27',
                style: kTitleText,
              ),

              const SizedBox(height: kSpacingXS),

              Text(
                'Collecting since Oct 2023 📦',
                style: kCaptionText,
              ),

              const SizedBox(height: kSpacingXL),

              // STATS
              ProfileStats(
                figures: 29,
                secret: 3,
                value: 375,
              ),

              const SizedBox(height: kSpacingXL),

              // RECENT ACTIVITY
              const RecentActivitySection(),

              const SizedBox(height: kSpacingXL),

              const BadgesSection(),

            ],
          ),
        ),
      ),
    );
  }
}

