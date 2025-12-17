import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/form/text_input.dart';


class UserNameInput extends StatelessWidget {
  const UserNameInput({super.key});

  @override
  Widget build(BuildContext context) {
    return MyTextInput(
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
