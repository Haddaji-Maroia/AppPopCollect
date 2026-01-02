import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../collection/collection_progress_bar.dart';

class ProgressCard extends StatelessWidget {
  final String title;
  final int owned;
  final int total;

  const ProgressCard({
    super.key,
    required this.title,
    required this.owned,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final int percent = total == 0 ? 0 : ((owned / total) * 100).round();

    return Container(
      padding: const EdgeInsets.all(kOverallCardPadding),
      decoration: BoxDecoration(
        color: const Color(0xFF7C96CF),
        borderRadius: BorderRadius.circular(kOverallCardRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: kWhiteSubtitle),

          const SizedBox(height: kSpacingS),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                '$owned / $total',
                style: kWhiteBigNumber,
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: kPaddingS,
                  vertical: kPaddingXS,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(kRadiusM),
                ),
                child: Text(
                  '$percent%',
                  style: const TextStyle(
                    color: Color(0xFF7C96CF),
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(height: kSpacingM),

          CollectionProgressBar(
            owned: owned,
            total: total,
            color: Colors.white,
          ),

          const SizedBox(height: kSpacingS),

          Text(
            '$owned Owned    ${total - owned} Missing',
            style: kWhiteCaption,
          ),
        ],
      ),
    );
  }
}
