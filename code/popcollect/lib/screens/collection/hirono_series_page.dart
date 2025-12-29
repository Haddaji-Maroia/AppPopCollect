import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/hirono/single_card_character.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/hirono/progress_card.dart';
import '../../widgets/hirono/series_character_card.dart';

class HironoSeriesPage extends StatelessWidget {
  const HironoSeriesPage({super.key});

  final int owned = 5;
  final int total = 13;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hirono Monsters\' Carnival Series',
          style: kSectionTitle,
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(kPagePadding),
        children: [
          // image
          ClipRRect(
            borderRadius: BorderRadius.circular(kRadiusM),
            child: Image.asset(
              'assets/images/hirono_other_one/otherOne.jpeg',
              height: 180,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(height: kSpacingM),

          ProgressCard(
            title: 'Collection Progress',
            owned: owned,
            total: total,
          ),

          const SizedBox(height: kSpacingL),

          // filters
          Row(
            children: const [
              _FilterChip(label: 'All (7)', selected: true),
              SizedBox(width: kSpacingXS),
              _FilterChip(label: 'Owned (2)'),
              SizedBox(width: kSpacingXS),
              _FilterChip(label: 'Missing (5)'),
            ],
          ),

          const SizedBox(height: kSpacingM),

          // GRID CHARACTERS
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: kSpacingS,
            crossAxisSpacing: kSpacingS,
            childAspectRatio: 0.68,
            children: const [
              SeriesCharacterCard(
                name: 'Vagrancy',
                image: 'assets/images/hirono_other_one/vagrancy.png',
                owned: true,
              ),
              SeriesCharacterCard(
                name: 'Cuckoo',
                image: 'assets/images/hirono_other_one/cuckoo.jpg',
                owned: false,
              ),
              SeriesCharacterCard(
                name: 'The Ghost',
                image: 'assets/images/hirono_other_one/ghost.jpg',
                owned: false,
              ),
              SeriesCharacterCard(
                name: 'Nowhere Safe',
                image: 'assets/images/hirono_other_one/safe.jpg',
                owned: true,
              ),
              SeriesCharacterCard(
                name: 'Raving',
                image: 'assets/images/hirono_other_one/raving.jpg',
                owned: true,
              ),
              SeriesCharacterCard(
                name: 'Being Alive',
                image: 'assets/images/hirono_other_one/alive.jpg',
                owned: true,
              ),
              SeriesCharacterCard(
                name: 'The monster',
                image: 'assets/images/hirono_other_one/monster.jpg',
                owned: false,
              ),
              SeriesCharacterCard(
                name: 'Amnesia',
                image: 'assets/images/hirono_other_one/amnesia.jpg',
                owned: false,
              ),
              SeriesCharacterCard(
                name: 'The Crow',
                image: 'assets/images/hirono_other_one/crow.jpg',
                owned: true,
              ),
              SeriesCharacterCard(
                name: 'The Fox',
                image: 'assets/images/hirono_other_one/fox.jpg',
                owned: false,
              ),
              SeriesCharacterCard(
                name: 'Staring',
                image: 'assets/images/hirono_other_one/staring.jpg',
                owned: false,
              ),
              SeriesCharacterCard(
                name: 'Marionette',
                image: 'assets/images/hirono_other_one/marionette.png',
                owned: false,
              ),
            ],
          ),

        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;

  const _FilterChip({
    required this.label,
    this.selected = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: selected ? Colors.black : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Text(
        label,
        style: TextStyle(
          color: selected ? Colors.white : Colors.black,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
