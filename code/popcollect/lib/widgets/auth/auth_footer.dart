import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import '../auth/or_divider.dart';
import '../form/primary_button.dart';

class AuthFooter extends StatelessWidget {
  final VoidCallback onSignUp;
  final VoidCallback onTutorial;

  const AuthFooter({
    super.key,
    required this.onSignUp,
    required this.onTutorial,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const OrDivider(),
        PrimaryButton(
          text: 'Sign up',
          onPressed: onSignUp,
        ),
        const SizedBox(height: kSpacingS),
        TextButton(
          onPressed: onTutorial,
          child: const Text("First time? View Tutorial", style: kBodyText),
        ),
      ],
    );
  }
}