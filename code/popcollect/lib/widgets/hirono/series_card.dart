import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import '../collection/collection_progress_bar.dart';

class SeriesCard extends StatelessWidget {
  final String image;
  final String title;
  final int owned;
  final int total;
  final int secret;
  final VoidCallback? onTap;

  const SeriesCard({
    super.key,
    required this.image,
    required this.title,
    required this.owned,
    required this.total,
    required this.secret,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final int percent = ((owned / total) * 100).round();

    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: kSpacingM),
        padding: const EdgeInsets.all(kHorizontalPadding),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(kRadiusL),
          border: Border.all(color: Colors.grey.shade300),
        ),
        child: Row(
          children: [
            // IMMAGINE
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
                    title,
                    style: kCardTitleHirono,
                  ),

                  const SizedBox(height: kSpacingS),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '$owned / $total collected',
                        style: kSmallGreyText,
                      ),
                      Text(
                        '$percent%',
                        style: kLinkText,
                      ),
                    ],
                  ),

                  const SizedBox(height: kSpacingXS),

                  // PROGRESS BAR
                  CollectionProgressBar(
                    owned: owned,
                    total: total,
                  ),

                  const SizedBox(height: kSpacingS),

                  if (secret > 0)
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          size: kSeriesStarSize,
                          color: Colors.purple,
                        ),
                        const SizedBox(width: kSeriesStarGap),
                        Text(
                          '$secret Secret',
                          style: kSmallPurpleText,
                        ),
                      ],
                    ),
                ],
              ),
            ),

            const Icon(Icons.chevron_right),
          ],
        ),
      ),
    );
  }
}
