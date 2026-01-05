import 'package:flutter/material.dart';
import '../../constants/durations.dart';
import '../../constants/sizes.dart';

class OnboardingDot extends StatelessWidget {
  final bool isActive;
  const OnboardingDot({super.key, required this.isActive});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: AppDurations.fast,
      height: kDotSize,
      width: isActive ? kDotWidthActive : kDotSize,
      margin: const EdgeInsets.symmetric(horizontal: kSpacingXS / 2),
      decoration: BoxDecoration(
        color: isActive ? const Color(0xFF6366F1) : const Color(0xFFE5E7EB),
        borderRadius: BorderRadius.circular(kRadiusL),
      ),
    );
  }
}

class InputLabel extends StatelessWidget {
  final String text;
  const InputLabel(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: kSpacingXS),
      child: Text(
          text,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey)
      ),
    );
  }
}