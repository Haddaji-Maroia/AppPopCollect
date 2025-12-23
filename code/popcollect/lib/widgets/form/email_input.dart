import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/form/text_input.dart';


class EmailInput extends StatelessWidget {
  final TextEditingController controller;

  const EmailInput({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      keyboardType: TextInputType.emailAddress,
      controller: controller,
      labelText: 'Email',
      hintText: 'Enter your email',
      prefixIcon: const Icon(Icons.email),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Email is required';
        }
        return null;
      },
    );
  }
}
