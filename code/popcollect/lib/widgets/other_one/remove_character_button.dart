import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class RemoveCharacterButton extends StatelessWidget {
  final VoidCallback onPressed;

  const RemoveCharacterButton({super.key, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        minimumSize: const Size.fromHeight(kButtonHeight),
        side: const BorderSide(color: Colors.red),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(kRadiusM),
        ),
      ),
      onPressed: onPressed,
      icon: const Icon(Icons.delete, color: Colors.red, size: kIconM),
      label: const Text(
        'Remove from Collection',
        style: TextStyle(color: Colors.red, fontWeight: FontWeight.w600),
      ),
    );
  }
}