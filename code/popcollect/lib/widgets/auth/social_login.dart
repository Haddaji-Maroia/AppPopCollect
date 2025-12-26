import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});


  Widget _icon(String path){
    return Container(
      padding: const EdgeInsets.all(kSocialIconPadding),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white),
        borderRadius: BorderRadius.circular(kSocialIconBorderRadius),
      ),
      child: SizedBox(
        width: kSocialIconSize,
        height: kSocialIconSize,
        child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: () {},
          icon: Image.asset(path),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _icon('assets/icons/logos_facebook.png'),
        SizedBox(width: kSocialIconSpacing),
        _icon('assets/icons/logos_apple.png'),
        SizedBox(width: kSocialIconSpacing),
        _icon('assets/icons/logos_google.png'),
      ],
    );
  }
}
