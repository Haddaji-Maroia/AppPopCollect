import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
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
          padding: const EdgeInsets.all(kPagePadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // HEADER
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    icon: const Icon(Icons.share),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.logout),
                    onPressed: () async {
                      _showLogoutDialog(context);
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
              const Text(
                'sophia27',
                style: kTitleText,
              ),

              const SizedBox(height: kSpacingXS),

              const Text(
                'Collecting since Oct 2023 📦',
                style: kCaptionText,
              ),

              const SizedBox(height: kSpacingXL),

              // STATS
              const ProfileStats(
                figures: 29,
                secret: 3,
                value: 375,
              ),

              const SizedBox(height: kSpacingXL),
              const RecentActivitySection(),
              const SizedBox(height: kSpacingXL),
              const BadgesSection(),
            ],
          ),
        ),
      ),
    );
  }

  // to logout
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Logout"),
          content: const Text("Are you sure you want to log out?"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel"),
            ),
            TextButton(
              onPressed: () async {
                await FirebaseAuth.instance.signOut();
                if (context.mounted) Navigator.pop(context);
              },
              child: const Text("Logout", style: TextStyle(color: Colors.red)),
            ),
          ],
        );
      },
    );
  }
}