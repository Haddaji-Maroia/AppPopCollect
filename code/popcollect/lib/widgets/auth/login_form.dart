import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../form/email_input.dart';
import '../form/password_input.dart';
import '../form/primary_button.dart';

class LoginForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final VoidCallback onLoginPressed;

  const LoginForm({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
    required this.onLoginPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          EmailInput(controller: emailController),
          const SizedBox(height: kSpacingM),
          PasswordInput(controller: passwordController),
          const SizedBox(height: kSpacingXL),
          PrimaryButton(
            text: 'Login',
            onPressed: onLoginPressed,
          ),
        ],
      ),
    );
  }
}