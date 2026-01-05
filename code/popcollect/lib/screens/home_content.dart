import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import '../constants/sizes.dart';
import '../widgets/home/total_progress_card.dart';
import '../widgets/home_content/home_main_sections.dart';
import '../widgets/home_content/home_top_header.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    final FirebaseFirestore firestore = FirebaseFirestore.instance;
    const String userId = 'test_user_123';
    const int globalTotalCharacters = kGlobalTotalCharacters;

    return StreamBuilder<DocumentSnapshot<Map<String, dynamic>>>(
      stream: firestore.collection('users').doc(userId).snapshots(),
      builder: (context, userSnapshot) {
        String nameToShow = "Collector";
        if (userSnapshot.hasData && userSnapshot.data!.exists) {
          final user = AppUser.fromJson(userSnapshot.data!.data()!);
          nameToShow = user.username;
        }

        return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: firestore
              .collection('characters')
              .where('isOwned', isEqualTo: true)
              .snapshots(),
          builder: (context, charSnapshot) {
            final int realOwnedCount = charSnapshot.hasData ? charSnapshot.data!.docs.length : 0;

            return SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: kHomeHeaderHeight,
                    child: Stack(
                      clipBehavior: Clip.none,
                      children: [
                        HomeTopHeader(username: nameToShow),
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
                  const HomeMainSections(),
                ],
              ),
            );
          },
        );
      },
    );
  }
}