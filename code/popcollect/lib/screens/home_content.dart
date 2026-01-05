import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import '../constants/sizes.dart';
import '../widgets/home/home_header.dart';
import '../widgets/home/total_progress_card.dart';
import '../widgets/home/whats_new_section.dart';
import '../widgets/home/charaters_section.dart';
import '../widgets/home/artists_section.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    const String userId = 'test_user_123';
    const int globalTotalCharacters = 652;

    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('users').doc(userId).snapshots(),
      builder: (context, userSnapshot) {

        String nameToShow = "Collector";
        if (userSnapshot.hasData && userSnapshot.data!.exists) {
          final user = AppUser.fromJson(userSnapshot.data!.data()!);
          nameToShow = user.username;
        }

        return StreamBuilder<QuerySnapshot>(
          stream: FirebaseFirestore.instance
              .collection('characters')
              .where('isOwned', isEqualTo: true)
              .snapshots(),
          builder: (context, charSnapshot) {

            final int realOwnedCount = charSnapshot.hasData ? charSnapshot.data!.docs.length : 0;

            return SingleChildScrollView(
              child: Column(
                children: [
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
                              colors: [Color(0xFF3B5BFF), Color(0xFF7C3AED)],
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                            ),
                          ),
                          child: SafeArea(
                            bottom: false,
                            child: HomeHeader(username: nameToShow),
                          ),
                        ),

                        Positioned(
                          left: kPagePadding,
                          right: kPagePadding,
                          bottom: -kSpacingM,
                          child: TotalProgressCard(
                            owned: realOwnedCount,
                            total: globalTotalCharacters,
                          ),
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
          },
        );
      },
    );
  }
}