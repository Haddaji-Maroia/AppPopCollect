import 'package:flutter/material.dart';

class CollectionFilters extends StatelessWidget {
  final String selected;
  final Function(String) onChanged;

  const CollectionFilters({
    super.key,
    required this.selected,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        _FilterChip(
          label: 'All',
          selected: selected == 'All',
          onTap: () => onChanged('All'),
        ),
        const SizedBox(width: 8),
        _FilterChip(
          label: 'Owned',
          selected: selected == 'Owned',
          onTap: () => onChanged('Owned'),
        ),
        const SizedBox(width: 8),
        _FilterChip(
          label: 'Missing',
          selected: selected == 'Missing',
          onTap: () => onChanged('Missing'),
        ),
      ],
    );
  }
}

class _FilterChip extends StatelessWidget {
  final String label;
  final bool selected;
  final VoidCallback onTap;

  const _FilterChip({
    required this.label,
    required this.selected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        decoration: BoxDecoration(
          color: selected ? Colors.black : Colors.white,
          borderRadius: BorderRadius.circular(20),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Text(
          label,
          style: TextStyle(
            color: selected ? Colors.white : Colors.black,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
