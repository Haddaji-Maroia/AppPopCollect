import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';

class TotalProgressCard extends StatelessWidget {
  final int owned;
  final int total;

  const TotalProgressCard({
    super.key,
    required this.owned,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    final double progressValue = total > 0 ? owned / total : 0;
    final int percent = (progressValue * 100).round();

    return Container(
      padding: const EdgeInsets.all(kHorizontalPadding),
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF5B7FFF), Color(0xFF7C5CFF)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        borderRadius: BorderRadius.circular(kBorderRadius),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Total Progress', style: kWhiteSubtitle),
                  const SizedBox(height: 6),
                  Text('$percent%', style: kBigNumberWhite),
                ],
              ),

              Container(
                width: kProgressIconSize,
                height: kProgressIconSize,
                decoration: const BoxDecoration(
                  color: Color(0xFFFFC83D),
                  shape: BoxShape.circle,
                ),
                child: const Icon(
                  Icons.emoji_events,
                  color: Colors.white,
                  size: 28,
                ),
              ),
            ],
          ),

          const SizedBox(height: kVerticalSpacingM),

          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: progressValue,
              minHeight: kProgressBarHeight,
              backgroundColor: Colors.white,
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFFFFC83D),
              ),
            ),
          ),

          const SizedBox(height: kVerticalSpacingS),

          Text(
            '$owned of $total figures collected',
            style: kWhiteCaption,
          ),
        ],
      ),
    );
  }
}