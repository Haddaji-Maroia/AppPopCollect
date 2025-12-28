import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class CollectionProgressBar extends StatelessWidget {
  final int owned;
  final int total;
  final Color color;

  const CollectionProgressBar({
    super.key,
    required this.owned,
    required this.total,
    this.color = const Color(0xFF587DBD),
  });

  @override
  Widget build(BuildContext context) {
    return LinearProgressIndicator(
      value: owned / total,
      minHeight: kProgressBarHeight,
      borderRadius: BorderRadius.circular(kBorderRadiusS),
      valueColor: AlwaysStoppedAnimation<Color>(color),
    );
  }
}

