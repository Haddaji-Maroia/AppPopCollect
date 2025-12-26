import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/home/section_header.dart';
import '../../screens/characters_page.dart';
import 'characters_card.dart';
import '../../constants/sizes.dart';


class CharactersSection extends StatelessWidget {
  const CharactersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final characters = [
      {
        'name': 'Hirono',
        'image': 'assets/images/characters/hirono.jpg',
      },
      {
        'name': 'Skullpanda',
        'image': 'assets/images/characters/skullPanda2.jpg',
      },
      {
        'name': 'Dimoo',
        'image': 'assets/images/characters/dimoo.jpg',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TITLE + SEE ALL
        SectionHeader(
          title: 'Characters',
          actionText: 'Voir tous les personnages',
          onTap: () {
            Navigator.pushNamed(
              context,
              CharactersPage.routeName,
            );
          },
        ),

        const SizedBox(height: kSpacingM),

        // CAROUSEL
        SizedBox(
          height: kCharactersCarouselHeight,
          child: PageView.builder(
            controller: PageController(
              viewportFraction: kCharactersViewportFraction,
              initialPage: kCharactersInitialPage, // parte dal centro
            ),
            itemCount: characters.length,
            itemBuilder: (context, index) {
              final character = characters[index];
              return CharacterCard(
                name: character['name']!,
                image: character['image']!,
              );
            },
          ),
        ),
      ],
    );
  }
}
