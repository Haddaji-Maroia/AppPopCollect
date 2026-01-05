import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/hirono/progress_card.dart';
import '../../widgets/hirono/series_character_card.dart';
import '../../widgets/common/series_filter_chips.dart';
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

  void _toggleOwnership(String id, bool owned) {
    db.characters(id).patch(
          (p) => [
        p.isOwned(owned),
        if (!owned) p.price(kInitialOwnedValue.toDouble()),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('The Other One', style: kSectionTitle),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: StreamBuilder<List<HironoCharacter>>(
        stream: db.characters.stream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

          final allCharacters = snapshot.data!;
          final ownedCount = allCharacters.where((c) => c.isOwned).length;

          final visibleCharacters = switch (selectedFilter) {
            SeriesFilter.owned => allCharacters.where((c) => c.isOwned).toList(),
            SeriesFilter.missing => allCharacters.where((c) => !c.isOwned).toList(),
            SeriesFilter.all => allCharacters,
          };

          return ListView(
            padding: const EdgeInsets.all(kPagePadding),
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(kRadiusM),
                child: Image.asset(
                  'assets/images/hirono_other_one/otherOne.jpeg',
                  height: kHeroImageHeight,
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


              //filtri
              CustomFilterChips<SeriesFilter>(
                items: SeriesFilter.values,
                selectedItem: selectedFilter,
                onSelected: (filter) => setState(() => selectedFilter = filter),
                labelBuilder: (filter) {
                  switch (filter) {
                    case SeriesFilter.all:
                      return 'All (${allCharacters.length})';
                    case SeriesFilter.owned:
                      return 'Owned ($ownedCount)';
                    case SeriesFilter.missing:
                      return 'Missing (${allCharacters.length - ownedCount})';
                  }
                },
              ),

              const SizedBox(height: kSpacingM),

              GridView.count(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                crossAxisCount: 2,
                mainAxisSpacing: kSpacingS,
                crossAxisSpacing: kSpacingS,
                childAspectRatio: kCardAspectRatio,
                children: visibleCharacters.map((character) {
                  return SeriesCharacterCard(
                    name: character.name,
                    image: character.image,
                    owned: character.isOwned,
                    price: character.price,
                    onAdd: () => _toggleOwnership(character.id, true),
                    onDelete: () => _toggleOwnership(character.id, false),
                    onView: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HironoCharacterPage(character: character),
                        ),
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