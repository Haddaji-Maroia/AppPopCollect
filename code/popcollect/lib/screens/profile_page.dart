import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import '../constants/sizes.dart';
import '../constants/fonts.dart';
import '../widgets/profile/profile_stats.dart';
import '../widgets/profile/recent_activity_section.dart';
import '../widgets/profile/badges_section.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  static const routeName = '/profile';

  @override
  Widget build(BuildContext context) {
    const String userId = 'test_user_123';

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('users').doc(userId).snapshots(),
          builder: (context, userSnapshot) {
            if (userSnapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            }

            if (!userSnapshot.hasData || !userSnapshot.data!.exists) {
              return const Center(
                child: Text("Please run Setup from Home 🚀", style: kBodyText),
              );
            }

            final userData = userSnapshot.data!.data()!;
            final user = AppUser.fromJson(userData);

            return RefreshIndicator(
              onRefresh: () async => FirebaseFirestore.instance.terminate(),
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(kPagePadding),
                physics: const AlwaysScrollableScrollPhysics(),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            icon: const Icon(Icons.share_outlined, color: Colors.black87),
                            onPressed: () {}
                        ),
                        IconButton(
                          icon: const Icon(Icons.logout_rounded, color: Colors.black87),
                          onPressed: () => _showLogoutDialog(context),
                        ),
                      ],
                    ),

                    const SizedBox(height: kSpacingM),

                    //AVATAR
                    CircleAvatar(
                      radius: kProfileAvatarRadius,
                      backgroundColor: Colors.grey[200],
                      backgroundImage: user.avatarUrl != null
                          ? AssetImage(user.avatarUrl!) as ImageProvider
                          : null,
                      child: user.avatarUrl == null
                          ? const Icon(Icons.person, size: 40, color: Colors.grey)
                          : null,
                    ),

                    const SizedBox(height: kSpacingS),

                    //USER INFO
                    Text(user.username, style: kTitleText),
                    const SizedBox(height: kSpacingXS),
                    Text('Collecting since ${user.collectingSince} 📦', style: kCaptionText),

                    const SizedBox(height: kSpacingXL),

                    //STATS
                    ProfileStats(
                        figures: user.figuresCount,
                        secret: user.secretCount,
                        value: user.totalValue
                    ),

                    const SizedBox(height: kSpacingXL),

                    //RECENT ACTIVITY
                    StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                      stream: FirebaseFirestore.instance
                          .collection('global_activities')
                          .orderBy('date', descending: true)
                          .snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) return const SizedBox.shrink();
                        return RecentActivitySection(docs: snapshot.data!.docs);
                      },
                    ),

                    const SizedBox(height: kSpacingL),

                    //BADGES SECTION
                    StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
                      stream: FirebaseFirestore.instance.collection('global_badges').snapshots(),
                      builder: (context, snapshot) {
                        if (!snapshot.hasData) return const SizedBox.shrink();
                        return BadgesSection(docs: snapshot.data!.docs);
                      },
                    ),

                    const SizedBox(height: 120),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  // logica per il logout
  void _showLogoutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: const Text("Logout"),
        content: const Text("Are you sure you want to sign out?"),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Cancel")
          ),
          TextButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              if (context.mounted) {
                Navigator.of(context).pushNamedAndRemoveUntil('/login', (route) => false);
              }
            },
            child: const Text("Logout", style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}