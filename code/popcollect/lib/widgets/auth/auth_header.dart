import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:popcollect2/constants/fonts.dart';

import '../../constants/sizes.dart';


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
        SizedBox(height: kAuthLogoSpacing),
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: kTitleText,
          ),
        ),
        SizedBox(height: kAuthTitleSpacing),
      ],
    );
  }
}
