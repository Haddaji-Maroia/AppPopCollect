import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import '../../widgets/form/primary_button.dart';

class StepWelcome extends StatelessWidget {
  final VoidCallback onNext;
  final VoidCallback onSkip;

  const StepWelcome({super.key, required this.onNext, required this.onSkip});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPagePadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/icons/logoPop.svg', height: 50),
          const SizedBox(height: kSpacingXL),
          const Text('Pop Mart Tracker', style: kSectionTitle),
          const SizedBox(height: kSpacingS),
          const Text(
            'Organize your collection in one place.',
            textAlign: TextAlign.center,
            style: kBodyText,
          ),
          const SizedBox(height: kSpacingXL * 2),
          PrimaryButton(text: 'Get Started', onPressed: onNext),
          TextButton(
            onPressed: onSkip,
            child: const Text('Skip to Login', style: kCaptionText),
          ),
        ],
      ),
    );
  }
}