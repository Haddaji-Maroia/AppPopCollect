import 'package:flutter/material.dart';
import 'package:dto/dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/collection/collection_card.dart';
import 'collection_detail_page.dart';
import 'hirono_page.dart';

class CollectionPage extends StatelessWidget {
  static const routeName = '/collection';

  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    final db = FirestoreODM(appSchema, firestore: FirebaseFirestore.instance);

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black),
          onPressed: () {
            Navigator.of(context).popUntil((route) => route.isFirst);
          },
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: StreamBuilder<List<AppCollection>>(
          stream: db.collections.stream,
          builder: (context, colSnapshot) {
            if (!colSnapshot.hasData) return const Center(child: CircularProgressIndicator());

            return StreamBuilder<List<HironoCharacter>>(
              stream: db.characters.stream,
              builder: (context, charSnapshot) {
                if (!charSnapshot.hasData) return const Center(child: CircularProgressIndicator());

                final allCharacters = charSnapshot.data!;
                final collections = List<AppCollection>.from(colSnapshot.data!); // Copia la lista per ordinarla

                collections.sort((a, b) {
                  double getProgress(AppCollection col) {
                    int owned;
                    int total;
                    if (col.id == 'hirono') {
                      owned = allCharacters.where((c) => c.isOwned).length;
                      total = 108;
                    } else {
                      owned = 0;
                      total = col.total;
                    }
                    return total > 0 ? owned / total : 0.0;
                  }

                  return getProgress(b).compareTo(getProgress(a));
                });

                final int hironoOwned = allCharacters.where((c) => c.isOwned).length;

                return SingleChildScrollView(
                  padding: const EdgeInsets.all(kPagePadding),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text('My Collections', style: kTitleText),
                          Text('${collections.length} collections', style: kSecondaryText),
                        ],
                      ),
                      const SizedBox(height: kSpacingM),

                      ListView.separated(
                        shrinkWrap: true,
                        physics: const NeverScrollableScrollPhysics(),
                        padding: EdgeInsets.zero,
                        itemCount: collections.length,
                        separatorBuilder: (_, __) => const SizedBox(height: 8),
                        itemBuilder: (context, index) {
                          final col = collections[index];

                          int currentOwned = 0;
                          int currentTotal = col.total;

                          if (col.id == 'hirono') {
                            currentOwned = hironoOwned;
                            currentTotal = 108;
                          }

                          return GestureDetector(
                            onTap: () {
                              if (col.id == 'hirono') {
                                Navigator.push(context, MaterialPageRoute(builder: (_) => const HironoPage()));
                              } else {
                                Navigator.push(context, MaterialPageRoute(
                                  builder: (_) => CollectionDetailPage(collection: col),
                                ));
                              }
                            },
                            child: CollectionCard(
                              name: col.name,
                              image: col.image,
                              owned: currentOwned,
                              total: currentTotal,
                              price: col.price,
                              secret: col.secret,
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}