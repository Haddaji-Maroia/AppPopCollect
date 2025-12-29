import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';

class SeriesCharacterCard extends StatelessWidget {
  final String name;
  final String image;
  final bool owned;

  const SeriesCharacterCard({
    super.key,
    required this.name,
    required this.image,
    required this.owned,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kRadiusM),
        border: Border.all(
          color: owned ? Colors.blue : Colors.grey.shade300,
          width: owned ? 2 : 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // IMAGE + STATUS DOT
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(kRadiusM),
                ),
                child: Image.asset(
                  image,
                  height: 190,
                  width: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),

              Positioned(
                top: 8,
                right: 8,
                child: Container(
                  width: 18,
                  height: 18,
                  decoration: BoxDecoration(
                    color: owned ? Colors.green : Colors.white,
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.grey.shade400),
                  ),
                  child: owned
                      ? const Icon(Icons.check, size: 12, color: Colors.white)
                      : null,
                ),
              ),
            ],
          ),

          Padding(
            padding: const EdgeInsets.all(kSpacingS),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: kCardTitle,
                ),
                const SizedBox(height: 4),
                const Text(
                  'Standard',
                  style: kSmallGrey,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
