import 'package:flutter/material.dart';
import '../../constants/colors.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/collection/collection_progress_bar.dart';
import '../../widgets/hirono/progress_card.dart';
import 'hirono_series_page.dart';
import '../../widgets/hirono/series_card.dart';

class HironoPage extends StatefulWidget {
  const HironoPage({super.key});

  @override
  State<HironoPage> createState() => _HironoPageState();
}

class _HironoPageState extends State<HironoPage> {
  String selectedFilter = 'All';

  bool _showSeries(int owned, int total) {
    if (selectedFilter == 'All') return true;
    if (selectedFilter == 'In progress') {
      return owned > 0 && owned < total;
    }
    if (selectedFilter == 'Completed') {
      return owned == total;
    }
    return true;
  }

  int get totalOwned => 52;
  int get totalFigures => 108;
  double get overallProgress => totalOwned / totalFigures;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hirono',
          style: kSectionTitle,
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(kPagePadding),
        children: [

          ProgressCard(
            title: 'Overall Progress',
            owned: totalOwned,
            total: totalFigures,
          ),


          const SizedBox(height: kSectionSpacing),

          // Filtri
          Wrap(
            spacing: kFilterSpacing,
            children: [
              _FilterButton(
                label: 'All',
                selected: selectedFilter == 'All',
                onTap: () {
                  setState(() {
                    selectedFilter = 'All';
                  });
                },
              ),
              _FilterButton(
                label: 'In progress',
                selected: selectedFilter == 'In progress',
                onTap: () {
                  setState(() {
                    selectedFilter = 'In progress';
                  });
                },
              ),
              _FilterButton(
                label: 'Completed',
                selected: selectedFilter == 'Completed',
                onTap: () {
                  setState(() {
                    selectedFilter = 'Completed';
                  });
                },
              ),
            ],
          ),

          const SizedBox(height: kSectionSpacing),


          if (_showSeries(5, 13))
            SeriesCard(
              image: 'assets/images/hirono_series/hirono_serie1.jpg',
              title: 'Series 1: The Other One',
              owned: 5,
              total: 13,
              secret: 1,
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const HironoSeriesPage(),
                  ),
                );
              },
            ),

          if (_showSeries(4, 13))
            SeriesCard(
              image: 'assets/images/hirono_series/serie2.jpg',
              title: 'Series 2: Little Mischief',
              owned: 4,
              total: 13,
              secret: 1,
            ),

          if (_showSeries(8, 8))
            SeriesCard(
              image: 'assets/images/hirono_series/serie3.png',
              title: 'Series 3: City of Mercy',
              owned: 8,
              total: 8,
              secret: 2,
            ),

          if (_showSeries(3, 13))
            SeriesCard(
              image: 'assets/images/hirono_series/serie4.png',
              title: 'Series 4: MIME',
              owned: 3,
              total: 13,
              secret: 2,
            ),

          if (_showSeries(5, 10))
            SeriesCard(
              image: 'assets/images/hirono_series/serie5.png',
              title: 'Series 5: Reshape',
              owned: 5,
              total: 10,
              secret: 1,
            ),

          if (_showSeries(6, 13))
            SeriesCard(
              image: 'assets/images/hirono_series/serie6.png',
              title: 'Series 6: Shelter',
              owned: 6,
              total: 13,
              secret: 1,
            ),

          if (_showSeries(3, 11))
            SeriesCard(
              image: 'assets/images/hirono_series/serie7.png',
              title: 'Series 7: Hirono x Le Petit Prince',
              owned: 3,
              total: 11,
              secret: 1,
            ),

          if (_showSeries(7, 7))
            SeriesCard(
              image: 'assets/images/hirono_series/serie8.png',
              title: 'Series 8: Hirono x CLOT',
              owned: 7,
              total: 7,
              secret: 1,
            ),

          if (_showSeries(4, 13))
            SeriesCard(
              image: 'assets/images/hirono_series/serie9.png',
              title: 'Series 9: Echo',
              owned: 4,
              total: 13,
              secret: 1,
            ),

          if (_showSeries(7, 7))
            SeriesCard(
              image: 'assets/images/hirono_series/serie10.png',
              title: 'Series 10: Monsters Carnival',
              owned: 7,
              total: 7,
              secret: 1,
            ),
        ],
      ),
    );
  }
}

class _FilterButton extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _FilterButton({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
        backgroundColor: selected ? Colors.black : Colors.white,
        foregroundColor: selected ? Colors.white : Colors.black,
      ),
      onPressed: onTap,
      child: Text(label),
    );
  }
}
