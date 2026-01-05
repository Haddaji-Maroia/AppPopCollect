import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class CharacterHeaderImage extends StatelessWidget {
  final String image;
  final bool editMode;
  final VoidCallback onRemove;
  final VoidCallback? onCameraTap; // AGGIUNGI QUESTO

  const CharacterHeaderImage({
    super.key,
    required this.image,
    required this.editMode,
    required this.onRemove,
    this.onCameraTap, // AGGIUNGI QUESTO
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Image Hirono Vangrancy
        ClipRRect(
          borderRadius: BorderRadius.circular(kRadiusM),
          child: Image.asset(
            image,
            width: double.infinity,
            height: 320,
            fit: BoxFit.contain,
          ),
        ),

        if (editMode)
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withValues(alpha: 0.5),
                borderRadius: BorderRadius.circular(kRadiusM),
              ),
              child: Center(
                child: ElevatedButton.icon(
                  // CAMBIATO QUI: Ora chiama la funzione fotocamera
                  onPressed: onCameraTap,
                  icon: const Icon(Icons.camera_alt),
                  label: const Text('Change Photo'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}