import 'package:flutter/material.dart';
import '../../constants/durations.dart';
import '../../constants/sizes.dart';

class CollectionSelector extends StatelessWidget {
  final List<dynamic> collections;
  final List<String> selectedSeries;
  final Function(String) onToggle;

  const CollectionSelector({
    super.key,
    required this.collections,
    required this.selectedSeries,
    required this.onToggle,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: kGridSpacing,
        crossAxisSpacing: kGridSpacing,
      ),
      itemCount: collections.length,
      itemBuilder: (context, index) {
        final item = collections[index];
        final isSelected = selectedSeries.contains(item.name);

        return GestureDetector(
          onTap: () => onToggle(item.name),
          child: AnimatedContainer(
            duration: AppDurations.fast,
            decoration: BoxDecoration(
              color: isSelected ? const Color(0xFF6366F1) : const Color(0xFFF9FAFB),
              borderRadius: BorderRadius.circular(kRadiusM),
              border: Border.all(
                color: isSelected ? Colors.transparent : Colors.grey.shade200,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(kRadiusS),
                  child: Image.asset(
                    item.image,
                    height: kCollectionIconSize,
                    width: kCollectionIconSize,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) => const Icon(Icons.toys, size: 20),
                  ),
                ),
                const SizedBox(height: kSpacingXS),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    item.name,
                    maxLines: 1,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontSize: 10,
                      color: isSelected ? Colors.white : Colors.black,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}