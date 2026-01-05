import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/hirono/progress_card.dart';
import '../../widgets/hirono/series_card.dart';
import 'hirono_series_page.dart';
import 'hirono_simple_series_page.dart';

class HironoPage extends StatefulWidget {
  const HironoPage({super.key});

  @override
  State<HironoPage> createState() => _HironoPageState();
}

class _HironoPageState extends State<HironoPage> {
  String selectedFilter = 'All';

  // Inizializziamo il DB per accedere allo stream dei personaggi
  final db = FirestoreODM(appSchema, firestore: FirebaseFirestore.instance);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hirono', style: kSectionTitle),
      ),
      // 1. STREAM PER LE SERIE (per la lista)
      body: StreamBuilder<QuerySnapshot>(
        stream: FirebaseFirestore.instance.collection('series').snapshots(),
        builder: (context, seriesSnapshot) {
          if (seriesSnapshot.hasError) return Center(child: Text("Errore: ${seriesSnapshot.error}"));
          if (!seriesSnapshot.hasData) return const Center(child: CircularProgressIndicator());

          final allSeries = seriesSnapshot.data!.docs.map((doc) {
            final data = doc.data() as Map<String, dynamic>;
            return HironoSeries.fromJson({...data, 'id': doc.id});
          }).toList();

          allSeries.sort((a, b) {
            int getNumber(String title) {
              final match = RegExp(r'\d+').firstMatch(title);
              return match != null ? int.parse(match.group(0)!) : 0;
            }
            return getNumber(a.title).compareTo(getNumber(b.title));
          });

          // 2. STREAM PER I PERSONAGGI (per il progresso totale)
          return StreamBuilder<List<HironoCharacter>>(
            stream: db.characters.stream,
            builder: (context, charSnapshot) {
              // Calcoliamo i dati reali dei personaggi
              int totalOwned = 0;
              int totalPossible = 0;

              if (charSnapshot.hasData) {
                totalOwned = charSnapshot.data!.where((c) => c.isOwned).length;
                totalPossible = charSnapshot.data!.length;
              }

              return ListView(
                padding: const EdgeInsets.all(kPagePadding),
                children: [
                  // LA CARD ORA È REALE
                  ProgressCard(
                    title: 'Overall Progress',
                    owned: totalOwned,
                    total: 108,
                  ),

                  const SizedBox(height: kSectionSpacing),
                  _buildFilters(),
                  const SizedBox(height: kSectionSpacing),

                  ...allSeries.map((serie) {
                    // Calcolo dinamico "Owned" per ogni riga della lista (opzionale)
                    int seriesOwned = 0;
                    if (charSnapshot.hasData) {
                      // Qui contiamo quanti personaggi di QUESTA serie possediamo
                      // Nota: Assicurati che i personaggi abbiano un campo per collegarli alla serie se vuoi questo dato preciso
                      seriesOwned = (serie.id == 'other_one') ? totalOwned : 0;
                    }

                    if (!_shouldShow(seriesOwned, serie.total)) return const SizedBox.shrink();

                    return SeriesCard(
                      image: serie.image,
                      title: serie.title,
                      owned: seriesOwned,
                      total: serie.total,
                      secret: serie.secret,
                      onTap: () {
                        if (serie.id == 'other_one') {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (_) => const HironoSeriesPage()),
                          );
                        } else {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (_) => HironoSimpleSeriesPage(
                                title: serie.title,
                                image: serie.image,
                              ),
                            ),
                          );
                        }
                      },
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

  bool _shouldShow(int owned, int total) {
    if (selectedFilter == 'All') return true;
    if (selectedFilter == 'In progress') return owned > 0 && owned < total;
    if (selectedFilter == 'Completed') return owned == total;
    return true;
  }

  Widget _buildFilters() {
    return Wrap(
      spacing: kFilterSpacing,
      children: ['All', 'In progress', 'Completed'].map((label) {
        final isSelected = selectedFilter == label;
        return OutlinedButton(
          style: OutlinedButton.styleFrom(
            backgroundColor: isSelected ? Colors.black : Colors.white,
            foregroundColor: isSelected ? Colors.white : Colors.black,
          ),
          onPressed: () => setState(() => selectedFilter = label),
          child: Text(label),
        );
      }).toList(),
    );
  }
}