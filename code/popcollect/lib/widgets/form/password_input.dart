import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/form/text_input.dart';

class PasswordInput extends StatelessWidget {
  const PasswordInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      labelText: 'Password',
      hintText: 'Enter your password',
      prefixIcon: const Icon(Icons.lock),
      obscureText: true,
      validator: (value) {
        if (value == null || value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
