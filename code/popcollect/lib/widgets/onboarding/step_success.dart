import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import '../../widgets/form/primary_button.dart';

class StepSuccess extends StatelessWidget {
  final String userName;
  final VoidCallback onFinish;

  const StepSuccess({super.key, required this.userName, required this.onFinish});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPagePadding),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('✨', style: TextStyle(fontSize: 60)),
          const SizedBox(height: kSpacingM),
          Text("Ready, $userName!", style: kSectionTitle),
          const Text("Your personal tracker is set up.", style: kBodyText),
          const SizedBox(height: kSpacingXL * 2),
          PrimaryButton(
            text: 'Create My Account 🚀',
            onPressed: onFinish,
          ),
        ],
      ),
    );
  }
}