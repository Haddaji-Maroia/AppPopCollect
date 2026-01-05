import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';

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
        const SizedBox(width: kSpacingS), // Sostituito 8
        _FilterChip(
          label: 'Owned',
          selected: selected == 'Owned',
          onTap: () => onChanged('Owned'),
        ),
        const SizedBox(width: kSpacingS), // Sostituito 8
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
        // Sostituiti 14 e 8 con costanti di padding
        padding: const EdgeInsets.symmetric(
            horizontal: kPaddingS,
            vertical: kPaddingXS
        ),
        decoration: BoxDecoration(
          color: selected ? Colors.black : Colors.white,
          // Sostituito 20 con kRadiusL o kBorderRadiusButton
          borderRadius: BorderRadius.circular(kBorderRadiusButton),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Text(
          label,
          // Usato kBodyBoldText o kBodyText con copyWith per il colore
          style: kBodyBoldText.copyWith(
            color: selected ? Colors.white : Colors.black,
          ),
        ),
      ),
    );
  }
}