import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';

class ArtistCard extends StatelessWidget {
  final String name;
  final String image;

  const ArtistCard({
    super.key,
    required this.name,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: kArtistCardWidth,
          height: kArtistCardHeight,
          padding: const EdgeInsets.all(kArtistCardPadding),
          decoration: BoxDecoration(
            color: Colors.yellow.shade200,
            borderRadius: BorderRadius.circular(kArtistCardRadius),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(kArtistImageRadius),
            child: Image.asset(
              image,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: kArtistNameSpacing),
        Text(
          name,
          style: kArtistNameText,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}

