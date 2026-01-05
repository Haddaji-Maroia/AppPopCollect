import 'package:flutter/material.dart';
import '../../constants/fonts.dart';


class HomeHeader extends StatelessWidget {
  final String username;

  const HomeHeader({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text('Welcome back,', style: kWhiteSubtitle),
            const SizedBox(height: 4),
            Text(username, style: kWhiteTitle),
          ],
        ),

        const CircleAvatar(
          radius: 36,
          backgroundImage: AssetImage(
            'assets/images/avatar/avatar.jpeg',
          ),
        ),
      ],
    );
  }
}
