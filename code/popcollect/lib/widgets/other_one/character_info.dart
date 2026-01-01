import 'package:flutter/material.dart';
import '../../../constants/fonts.dart';
import '../../../constants/sizes.dart';
import '../../../models/series_character.dart';

class CharacterInfo extends StatelessWidget {
  final SeriesCharacter character;

  const CharacterInfo({
    super.key,
    required this.character,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(character.name, style: kTitleText),
        const SizedBox(height: kSpacingS),

        const Text('Series:', style: kSmallGrey),
        const Text(
          'Hirono Monsters\' Carnival Series Figures',
          style: kBody,
        ),

        const SizedBox(height: kSpacingS),

        const Text('Artist:', style: kSmallGrey),
        const Text('Lang', style: kBody),

        const SizedBox(height: kSpacingS),

        const Text('Rarity:', style: kSmallGrey),
        const SizedBox(height: 4),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Text('Standard'),
        ),
      ],
    );
  }
}
