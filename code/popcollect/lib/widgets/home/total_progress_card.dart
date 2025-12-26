import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';



class TotalProgressCard extends StatelessWidget {
  const TotalProgressCard({super.key});

  @override
  Widget build(BuildContext context) {
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
                children: const [
                  Text('Total Progress', style: kWhiteSubtitle),
                  SizedBox(height: 6),
                  Text('29%', style: kBigNumberWhite),
                ],
              ),

              /// icona
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

          /// Barra di progressione
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: LinearProgressIndicator(
              value: 0.29,
              minHeight: kProgressBarHeight,
              backgroundColor: Colors.white.withOpacity(0.3),
              valueColor: const AlwaysStoppedAnimation<Color>(
                Color(0xFFFFC83D),
              ),
            ),
          ),

          const SizedBox(height: kVerticalSpacingS),

          const Text(
            '29 of 101 figures collected',
            style: kWhiteCaption,
          ),
        ],
      ),
    );
  }
}

