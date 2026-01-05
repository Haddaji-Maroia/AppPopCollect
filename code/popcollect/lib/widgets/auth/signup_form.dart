import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../form/username_input.dart';
import '../form/email_input.dart';
import '../form/password_input.dart';

class SignupForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  const SignupForm({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.emailController,
    required this.passwordController,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          UserNameInput(controller: nameController),
          const SizedBox(height: kSpacingM),
          EmailInput(controller: emailController),
          const SizedBox(height: kSpacingM),
          PasswordInput(controller: passwordController),
        ],
      ),
    );
  }
}