import 'package:flutter/material.dart';

import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import 'collection_progress_bar.dart';

class CollectionCard extends StatelessWidget {
  final String name;
  final String image;
  final int owned;
  final int total;
  final double price;
  final int secret;

  const CollectionCard({
    super.key,
    required this.name,
    required this.image,
    required this.owned,
    required this.total,
    required this.price,
    required this.secret,
  });

  @override
  Widget build(BuildContext context) {

    return Container(
      margin: const EdgeInsets.only(bottom: kSpacingM),
      padding: const EdgeInsets.all(kHorizontalPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kRadiusL),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: kAvatarRadius,
            backgroundImage: AssetImage(image),
          ),
          const SizedBox(width: kSpacingM),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: kCardTitleText,
                ),

                const SizedBox(width: kSpacingM),

                Text('$owned of $total collected'),

                const SizedBox(height: kSpacingS),
                CollectionProgressBar(
                  owned: owned,
                  total: total,
                ),

                const SizedBox(height: kSpacingS),
                Row(
                  children: [
                    Text('€${price.toStringAsFixed(2)}'),
                    if (secret > 0) ...[
                      const SizedBox(width: kSpacingM),
                      const Icon(Icons.star, size: 16, color: Colors.purple),
                      Text(' $secret Secret'),
                    ],
                  ],
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right),
        ],
      ),
    );
  }
}
