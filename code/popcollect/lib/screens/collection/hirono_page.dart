import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/hirono/progress_card.dart';
import '../../widgets/hirono/series_card.dart';
import '../../widgets/common/series_filter_chips.dart';
import 'hirono_series_page.dart';
import 'hirono_simple_series_page.dart';

class HironoPage extends StatefulWidget {
  const HironoPage({super.key});

  @override
  State<HironoPage> createState() => _HironoPageState();
}

class _HironoPageState extends State<HironoPage> {
  String selectedFilter = 'All';
  final db = FirestoreODM(appSchema, firestore: FirebaseFirestore.instance);

  List<HironoSeries> _sortSeries(QuerySnapshot snapshot) {
    final list = snapshot.docs.map((doc) {
      final data = doc.data() as Map<String, dynamic>;
      return HironoSeries.fromJson({...data, 'id': doc.id});
    }).toList();

    list.sort((a, b) {
      int getNumber(String title) {
        final match = RegExp(r'\d+').firstMatch(title);
        return match != null ? int.parse(match.group(0)!) : kInitialOwnedValue;
      }
      return getNumber(a.title).compareTo(getNumber(b.title));
    });
    return list;
  }

  bool _shouldShow(int owned, int total) {
    if (selectedFilter == 'All') return true;
    if (selectedFilter == 'In progress') return owned > kInitialOwnedValue && owned < total;
    if (selectedFilter == 'Completed') return owned == total;
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hirono', style: kSectionTitle),
      ),
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('series').snapshots(),
        builder: (context, seriesSnapshot) {
          if (seriesSnapshot.hasError) return Center(child: Text("Errore: ${seriesSnapshot.error}"));
          if (!seriesSnapshot.hasData) return const Center(child: CircularProgressIndicator());

          final allSeries = _sortSeries(seriesSnapshot.data!);

          return StreamBuilder<List<HironoCharacter>>(
            stream: db.characters.stream,
            builder: (context, charSnapshot) {
              int totalOwned = kInitialOwnedValue;
              if (charSnapshot.hasData) {
                totalOwned = charSnapshot.data!.where((c) => c.isOwned).length;
              }

              return ListView(
                padding: const EdgeInsets.all(kPagePadding),
                children: [
                  ProgressCard(
                    title: 'Overall Progress',
                    owned: totalOwned,
                    total: kHironoTotalItems,
                  ),
                  const SizedBox(height: kSectionSpacing),

                  // filtri
                  CustomFilterChips<String>(
                    items: const ['All', 'In progress', 'Completed'],
                    selectedItem: selectedFilter,
                    labelBuilder: (label) => label,
                    onSelected: (label) => setState(() => selectedFilter = label),
                  ),

                  const SizedBox(height: kSectionSpacing),

                  ...allSeries.where((s) {
                    int owned = (s.id == 'other_one') ? totalOwned : kInitialOwnedValue;
                    return _shouldShow(owned, s.total);
                  }).map((serie) {
                    return SeriesCard(
                      image: serie.image,
                      title: serie.title,
                      owned: (serie.id == 'other_one') ? totalOwned : kInitialOwnedValue,
                      total: serie.total,
                      secret: serie.secret,
                      onTap: () => _handleNavigation(context, serie),
                    );
                  }),
                ],
              );
            },
          );
        },
      ),
    );
  }

  void _handleNavigation(BuildContext context, HironoSeries serie) {
    final Widget destination = (serie.id == 'other_one')
        ? const HironoSeriesPage()
        : HironoSimpleSeriesPage(title: serie.title, image: serie.image);

    Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => destination),
    );
  }
}