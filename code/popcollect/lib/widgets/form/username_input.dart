import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/form/text_input.dart';


class UserNameInput extends StatelessWidget {
  final TextEditingController? controller;

  const UserNameInput({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
      controller: controller,
      keyboardType: TextInputType.emailAddress,
      labelText: 'Full Name',
      hintText: 'Enter your full name',
      prefixIcon: const Icon(Icons.person),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Full name is required';
        }
        return null;
      },
    );
  }
}
