import 'package:flutter/material.dart';
import '../../../constants/sizes.dart';

class CharacterHeaderImage extends StatelessWidget {
  final String image;
  final bool editMode;
  final VoidCallback onRemove;

  const CharacterHeaderImage({
    super.key,
    required this.image,
    required this.editMode,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(kRadiusM),
          child: Image.asset(
            image,
            height: 260,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),

        if (editMode)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.5),
                borderRadius: BorderRadius.circular(kRadiusM),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.camera_alt),
                    label: const Text('Change Photo'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black,
                    ),
                  ),
                  const SizedBox(width: 12),
                  ElevatedButton.icon(
                    onPressed: onRemove,
                    icon: const Icon(Icons.close),
                    label: const Text('Remove'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
          ),
      ],
    );
  }
}
