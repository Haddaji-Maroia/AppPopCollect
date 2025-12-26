import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';

class ActiveCollectionsSection extends StatelessWidget {
  const ActiveCollectionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('Active Collections', style: kSectionTitle),
            Text('View All', style: kLinkText),
          ],
        ),

        const SizedBox(height: kVerticalSpacingM),

        const _ActiveCollectionTile(
          name: 'Hirono',
          progressText: '29/130 collected',
          progress: 29 / 130,
          image: 'assets/images/collections/hirono3.jpeg',
        ),
        const SizedBox(height: kVerticalSpacingS),
        const _ActiveCollectionTile(
          name: 'SKULLPANDA',
          progressText: '35/130 collected',
          progress: 35 / 130,
          image: 'assets/images/collections/skull3.jpg',
        ),
      ],
    );
  }
}

class _ActiveCollectionTile extends StatelessWidget {
  final String name;
  final String progressText;
  final double progress;
  final String image;

  const _ActiveCollectionTile({
    required this.name,
    required this.progressText,
    required this.progress,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kHorizontalPadding),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(kBorderRadius),
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 10,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        children: [
          CircleAvatar(
            radius: 32,
            backgroundImage: AssetImage(image),
            backgroundColor: Colors.grey.shade200,
          ),
          const SizedBox(width: kHorizontalPadding),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: kCardTitle),
                const SizedBox(height: 4),
                Text(progressText, style: kSmallGreyText),
                const SizedBox(height: 6),
                LinearProgressIndicator(
                  borderRadius: BorderRadius.circular(10),
                  value: progress,
                  minHeight: 6,
                  backgroundColor: Colors.grey.shade300,
                  valueColor: const AlwaysStoppedAnimation<Color>(
                    Color(0xFF5B7FFF),
                  ),
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
