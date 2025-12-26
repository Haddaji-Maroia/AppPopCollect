import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/home/section_header.dart';
import 'artist_card.dart';
import '../../constants/sizes.dart';

class ArtistsSection extends StatelessWidget {
  const ArtistsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final artists = [
      {
        'name': 'Lang',
        'image': 'assets/images/artists/lang.png',
      },
      {
        'name': 'Kenny Wong',
        'image': 'assets/images/artists/kenny.png',
      },
      {
        'name': 'Skullpanda',
        'image': 'assets/images/artists/skull.png',
      },
    ];

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // TITLE + VIEW ALL
        SectionHeader(
          title: 'Artist',
          actionText: 'Voir tous les artistes',
          onTap: () {
            // TODO: navigazione
          },
        ),

        const SizedBox(height: kSectionSpacing),

        // CAROUSEL
        SizedBox(
          height: kArtistCarouselHeight,
          child: PageView.builder(
            controller: PageController(
              viewportFraction: kArtistViewportFraction,
              initialPage: kArtistInitialPage,
            ),
            itemCount: artists.length,
            itemBuilder: (context, index) {
              final artist = artists[index];
              return ArtistCard(
                name: artist['name']!,
                image: artist['image']!,
              );
            },
          ),
        ),
      ],
    );
  }
}
