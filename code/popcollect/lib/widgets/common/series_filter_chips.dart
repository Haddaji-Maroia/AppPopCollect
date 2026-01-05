import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';

class CustomFilterChips<T> extends StatelessWidget {
  final List<T> items;
  final T selectedItem;
  final String Function(T) labelBuilder;
  final Function(T) onSelected;

  const CustomFilterChips({
    super.key,
    required this.items,
    required this.selectedItem,
    required this.labelBuilder,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        // Rimosso il padding dal map e aggiunto spacing tra gli elementi
        children: items.map((item) {
          final isSelected = item == selectedItem;
          return Padding(
            padding: const EdgeInsets.only(right: kSpacingXS), // Usiamo costante per lo spazio
            child: GestureDetector(
              onTap: () => onSelected(item),
              child: Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: kPaddingS,
                    vertical: kPaddingXS
                ),
                decoration: BoxDecoration(
                  color: isSelected ? Colors.black : Colors.white,
                  borderRadius: BorderRadius.circular(kBorderRadiusButton),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Text(
                  labelBuilder(item),
                  style: kBodyBoldText.copyWith(
                    color: isSelected ? Colors.white : Colors.black,
                    fontSize: kFontSizeSmall, // Sostituito il 13 con la costante
                  ),
                ),
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}