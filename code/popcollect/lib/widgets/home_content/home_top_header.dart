import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../home/home_header.dart';

class HomeTopHeader extends StatelessWidget {
  final String username;

  const HomeTopHeader({super.key, required this.username});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(
        top: kSpacingXL,
        bottom: kSpacingXL * 2,
        left: kPagePadding,
        right: kPagePadding,
      ),
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF3B5BFF), Color(0xFF7C3AED)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: SafeArea(
        bottom: false,
        child: HomeHeader(username: username),
      ),
    );
  }
}