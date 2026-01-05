import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/models/collection.dart';
import 'package:popcollect2/widgets/home/characters_about_page.dart';
import 'package:popcollect2/widgets/home/section_header.dart';
import 'characters_card.dart';
import '../../constants/sizes.dart';

class CharactersSection extends StatelessWidget {
  const CharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SectionHeader(
          title: 'Collections',
          actionText: '',
          onTap: null,
        ),
        const SizedBox(height: kSpacingM),

        StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
          stream: FirebaseFirestore.instance.collection('collections').snapshots(),
          builder: (context, snapshot) {
            if (snapshot.hasError) return Text("Error: ${snapshot.error}");
            if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

            final collections = snapshot.data!.docs.map((doc) {
              try {
                final data = doc.data();
                data['id'] = doc.id;

                return AppCollection.fromJson(data);
              } catch (e) {
                debugPrint("Errore parsing collezione ${doc.id}: $e");
                return null;
              }
            }).whereType<AppCollection>().toList();

            if (collections.isEmpty) return const Text("No collections found");

            final int middleIndex = collections.length ~/ 2;

            return SizedBox(
              height: kCharactersCarouselHeight > 0 ? kCharactersCarouselHeight : 250,
              child: PageView.builder(
                controller: PageController(
                  viewportFraction: kCharactersViewportFraction,
                  initialPage: middleIndex,
                ),
                itemCount: collections.length,
                itemBuilder: (context, index) {
                  final item = collections[index];
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CharactersAboutPage(),
                          settings: RouteSettings(arguments: item),
                        ),
                      );
                    },
                    child: CharacterCard(
                      name: item.name,
                      image: item.image,
                    ),
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}