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

  double _calculateProgress(AppCollection col, List<HironoCharacter> allCharacters) {
    int owned;
    int total;

    if (col.id == 'hirono') {
      owned = allCharacters.where((c) => c.isOwned).length;
      total = kHironoTotalItems;
    } else {
      owned = kInitialOwnedValue;
      total = col.total;
    }

    return total > 0 ? owned / total : 0.0;
  }

  @override
  Widget build(BuildContext context) {
    final db = FirestoreODM(appSchema, firestore: FirebaseFirestore.instance);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.of(context).popUntil((route) => route.isFirst),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: Colors.black,
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
                final collections = List<AppCollection>.from(colSnapshot.data!);


                collections.sort((a, b) =>
                    _calculateProgress(b, allCharacters).compareTo(_calculateProgress(a, allCharacters))
                );

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
                        separatorBuilder: (_, __) => const SizedBox(height: kSpacingS),
                        itemBuilder: (context, index) {
                          final col = collections[index];

                          int currentOwned = (col.id == 'hirono') ? hironoOwned : kInitialOwnedValue;
                          int currentTotal = (col.id == 'hirono') ? kHironoTotalItems : col.total;

                          return GestureDetector(
                            onTap: () => _navigateToDetail(context, col),
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

  void _navigateToDetail(BuildContext context, AppCollection col) {
    if (col.id == 'hirono') {
      Navigator.push(context, MaterialPageRoute(builder: (_) => const HironoPage()));
    } else {
      Navigator.push(context, MaterialPageRoute(
        builder: (_) => CollectionDetailPage(collection: col),
      ));
    }
  }
}