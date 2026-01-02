import 'package:flutter/material.dart';

class CollectionButton extends StatelessWidget {
  final bool inCollection;
  final VoidCallback? onAdd;
  final VoidCallback? onRemove;

  const CollectionButton({
    super.key,
    required this.inCollection,
    this.onAdd,
    this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    if (!inCollection) {
      return ElevatedButton.icon(
        onPressed: onAdd,
        icon: const Icon(Icons.add),
        label: const Text('Add to Collection'),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xFF7C96CF),
          foregroundColor: Colors.white,
          minimumSize: const Size.fromHeight(50),
        ),
      );
    }

    return Container(
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.green.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.green),
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.check, color: Colors.green),
          SizedBox(width: 8),
          Text(
            'In Collection',
            style: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
