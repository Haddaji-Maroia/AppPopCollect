import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class AuthHeader extends StatelessWidget {
  final String title;

  const AuthHeader({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          'assets/icons/logoPop.svg',
        ),
        SizedBox(height: 50.0),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'Sign up',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(height: 30.0),
      ],
    );
  }
}
