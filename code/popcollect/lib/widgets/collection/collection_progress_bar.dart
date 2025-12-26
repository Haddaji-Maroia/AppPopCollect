import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';

class CollectionProgressBar extends StatelessWidget {
  final int owned;
  final int total;

  const CollectionProgressBar({
    super.key,
    required this.owned,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final double progress = owned / total;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // we have numbers here
        Text(
          '$owned / $total collected',
          style: kProgressText,
        ),

        const SizedBox(height: kProgressBarSpacing),

        ClipRRect(
          borderRadius: BorderRadius.circular(kProgressBarRadius),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: kProgressBarHeight,
            backgroundColor: Colors.grey.shade300,
            valueColor: const AlwaysStoppedAnimation<Color>(
              Color(0xFF587DBD),
            ),
          ),
        ),
      ],
    );
  }
}
