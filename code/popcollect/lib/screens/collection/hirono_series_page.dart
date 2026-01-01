import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/hirono/progress_card.dart';
import '../../widgets/hirono/series_character_card.dart';
import '../../models/series_character.dart';
import 'hirono_character_page.dart';

enum SeriesFilter { all, owned, missing }

class HironoSeriesPage extends StatefulWidget {
  const HironoSeriesPage({super.key});

  @override
  State<HironoSeriesPage> createState() => _HironoSeriesPageState();
}

class _HironoSeriesPageState extends State<HironoSeriesPage> {
  SeriesFilter selectedFilter = SeriesFilter.all;

  final List<SeriesCharacter> characters = [
    SeriesCharacter(
      name: 'Vagrancy',
      image: 'assets/images/hirono_other_one/vagrancy.png',
      owned: true,
    ),
    SeriesCharacter(
      name: 'Cuckoo',
      image: 'assets/images/hirono_other_one/cuckoo.jpg',
      owned: false,
    ),
    SeriesCharacter(
      name: 'The Ghost',
      image: 'assets/images/hirono_other_one/ghost.jpg',
      owned: false,
    ),
    SeriesCharacter(
      name: 'Nowhere Safe',
      image: 'assets/images/hirono_other_one/safe.jpg',
      owned: true,
    ),
    SeriesCharacter(
      name: 'Raving',
      image: 'assets/images/hirono_other_one/raving.jpg',
      owned: true,
    ),
    SeriesCharacter(
      name: 'Being Alive',
      image: 'assets/images/hirono_other_one/alive.jpg',
      owned: true,
    ),
    SeriesCharacter(
      name: 'The Monster',
      image: 'assets/images/hirono_other_one/monster.jpg',
      owned: false,
    ),
    SeriesCharacter(
      name: 'Amnesia',
      image: 'assets/images/hirono_other_one/amnesia.jpg',
      owned: false,
    ),
    SeriesCharacter(
      name: 'The Crow',
      image: 'assets/images/hirono_other_one/crow.jpg',
      owned: true,
    ),
    SeriesCharacter(
      name: 'The Fox',
      image: 'assets/images/hirono_other_one/fox.jpg',
      owned: false,
    ),
    SeriesCharacter(
      name: 'Staring',
      image: 'assets/images/hirono_other_one/staring.jpg',
      owned: false,
    ),
    SeriesCharacter(
      name: 'Marionette',
      image: 'assets/images/hirono_other_one/marionette.png',
      owned: false,
    ),
  ];

  // LOGICA SEMPLICE E LEGGIBILE
  List<SeriesCharacter> get visibleCharacters {
    if (selectedFilter == SeriesFilter.owned) {
      return characters.where((c) => c.owned).toList();
    }

    if (selectedFilter == SeriesFilter.missing) {
      return characters.where((c) => !c.owned).toList();
    }

    return characters;
  }

  int get ownedCount {
    return characters.where((c) => c.owned).length;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Other One', style: kSectionTitle),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(kPagePadding),
        children: [
          // IMAGE
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
            owned: ownedCount,
            total: characters.length,
          ),

          const SizedBox(height: kSpacingL),

          // FILTERS
          Row(
            children: [
              _FilterChip(
                label: 'All (${characters.length})',
                selected: selectedFilter == SeriesFilter.all,
                onTap: () {
                  setState(() {
                    selectedFilter = SeriesFilter.all;
                  });
                },
              ),
              const SizedBox(width: kSpacingXS),
              _FilterChip(
                label: 'Owned ($ownedCount)',
                selected: selectedFilter == SeriesFilter.owned,
                onTap: () {
                  setState(() {
                    selectedFilter = SeriesFilter.owned;
                  });
                },
              ),
              const SizedBox(width: kSpacingXS),
              _FilterChip(
                label: 'Missing (${characters.length - ownedCount})',
                selected: selectedFilter == SeriesFilter.missing,
                onTap: () {
                  setState(() {
                    selectedFilter = SeriesFilter.missing;
                  });
                },
              ),
            ],
          ),

          const SizedBox(height: kSpacingM),

          // GRID
          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: kSpacingS,
            crossAxisSpacing: kSpacingS,
            childAspectRatio: 0.68,
            children: visibleCharacters.map((character) {
              return SeriesCharacterCard(
                name: character.name,
                image: character.image,
                owned: character.owned,
                price: character.pricePaid,
                onAdd: () {
                  // CREATE → Firestore
                },
                onView: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => HironoCharacterPage(character: character),
                    ),
                  );
                },
                onDelete: () {
                  // DELETE → Firestore
                },
              );
            }).toList(),
          ),
        ],
      ),
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
      ),
    );
  }
}
