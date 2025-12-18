import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/form/text_input.dart';

class PasswordInput extends StatefulWidget {
  const PasswordInput({super.key});

  @override
  State<PasswordInput> createState() => _PasswordInputState();
}

class _PasswordInputState extends State<PasswordInput> {
  bool _obscurePassword = true;

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      labelText: 'Password',
      hintText: 'Enter your password',
      prefixIcon: const Icon(Icons.lock),
      obscureText: _obscurePassword,
      suffixIcon: IconButton(
        icon: Icon(
          _obscurePassword
              ? Icons.visibility_off
              : Icons.visibility,
        ),
        onPressed: () {
          setState(() {
            _obscurePassword = !_obscurePassword;
          });
        },
      ),
      validator: (value) {
        if (value == null || value.length < 6) {
          return 'Password must be at least 6 characters';
        }
        return null;
      },
    );
  }
}
