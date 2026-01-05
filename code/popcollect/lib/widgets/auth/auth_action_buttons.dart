import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import '../../widgets/form/primary_button.dart';
import 'or_divider.dart';

class AuthActionButtons extends StatelessWidget {
  final VoidCallback onSignUp;
  final VoidCallback onLogin;
  final VoidCallback onTutorial;

  const AuthActionButtons({
    super.key,
    required this.onSignUp,
    required this.onLogin,
    required this.onTutorial,
  });

  @override
  Widget build(BuildContext context) {
    const Color brandColor = Color(0xFF587DBD);

    return Column(
      children: [
        // BUTTON SIGN UP
        PrimaryButton(
          text: 'Sign up',
          onPressed: onSignUp,
          backgroundColor: brandColor,
        ),

        // DIVIDER "OR"
        const OrDivider(),

        // BUTTON LOGIN
        SizedBox(
          width: double.infinity,
          height: kButtonHeight,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: brandColor,
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(kRadiusL),
              ),
            ),
            onPressed: onLogin,
            child: const Text('Login', style: kButtonText),
          ),
        ),

        const SizedBox(height: kSpacingS),

        // verso onboarding
        TextButton(
          onPressed: onTutorial,
          child: const Text(
            "First time? View Tutorial",
            style: kCaptionText,
          ),
        ),
      ],
    );
  }
}