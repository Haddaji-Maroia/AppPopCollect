import 'package:flutter/material.dart';


class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});


  Widget _icon(String path){
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(100)),
      child: IconButton(
          onPressed: () {},
          icon: Image.asset(path)
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _icon('assets/icons/logos_facebook.png'),
        SizedBox(width: 10.0),
        _icon('assets/icons/logos_apple.png'),
        SizedBox(width: 10.0),
        _icon('assets/icons/logos_google.png'),
      ],
    );
  }
}
