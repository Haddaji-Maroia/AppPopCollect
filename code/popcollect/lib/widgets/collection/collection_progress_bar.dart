import 'package:flutter/material.dart';

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
          style: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
          ),
        ),

        const SizedBox(height: 6),

        // this is the progress bar
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 8,
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
