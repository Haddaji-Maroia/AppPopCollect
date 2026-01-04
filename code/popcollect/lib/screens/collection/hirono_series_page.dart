import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/hirono/progress_card.dart';
import '../../widgets/hirono/series_character_card.dart';
import 'hirono_character_page.dart';

enum SeriesFilter { all, owned, missing }

class HironoSeriesPage extends StatefulWidget {
  const HironoSeriesPage({super.key});

  @override
  State<HironoSeriesPage> createState() => _HironoSeriesPageState();
}

class _HironoSeriesPageState extends State<HironoSeriesPage> {
  SeriesFilter selectedFilter = SeriesFilter.all;

  final db = FirestoreODM(
    appSchema,
    firestore: FirebaseFirestore.instance,
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('The Other One', style: kSectionTitle),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: StreamBuilder<List<HironoCharacter>>(
        stream: db.characters.stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }

          final allCharacters = snapshot.data!;

          // FILTRI
          final visibleCharacters = switch (selectedFilter) {
            SeriesFilter.owned =>
                allCharacters.where((c) => c.isOwned).toList(),
            SeriesFilter.missing =>
                allCharacters.where((c) => !c.isOwned).toList(),
            _ => allCharacters,
          };

          final ownedCount =
              allCharacters.where((c) => c.isOwned).length;

          return ListView(
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
                total: allCharacters.length,
              ),

              const SizedBox(height: kSpacingL),

              // FILTERS
              Row(
                children: [
                  _FilterChip(
                    label: 'All (${allCharacters.length})',
                    selected: selectedFilter == SeriesFilter.all,
                    onTap: () =>
                        setState(() => selectedFilter = SeriesFilter.all),
                  ),
                  const SizedBox(width: kSpacingXS),
                  _FilterChip(
                    label: 'Owned ($ownedCount)',
                    selected: selectedFilter == SeriesFilter.owned,
                    onTap: () =>
                        setState(() => selectedFilter = SeriesFilter.owned),
                  ),
                  const SizedBox(width: kSpacingXS),
                  _FilterChip(
                    label:
                    'Missing (${allCharacters.length - ownedCount})',
                    selected: selectedFilter == SeriesFilter.missing,
                    onTap: () =>
                        setState(() => selectedFilter = SeriesFilter.missing),
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
                    owned: character.isOwned,
                    price: character.price,

                    // ADD
                    onAdd: () {
                      db.characters(character.id).patch(
                            (p) => [p.isOwned(true)],
                      );
                    },

                    // VIEW
                    onView: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HironoCharacterPage(character: character),
                        ),
                      );
                    },

                    // DELETE
                    onDelete: () {
                      db.characters(character.id).patch(
                            (p) => [
                          p.isOwned(false),
                          p.price(0),
                        ],
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          );
        },
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
