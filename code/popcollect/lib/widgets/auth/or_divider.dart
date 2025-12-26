import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';



class OrDivider extends StatelessWidget {
  const OrDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
        children: [
          Flexible(
            child:
            Divider(
              color: Colors.grey,
              height: kDividerHeight,
              indent: kDividerIndentLarge,
              endIndent: kDividerIndentSmall,
            ),
          ),

          const Text(
            'OR',
            style: kDividerText,
          ),

          Flexible(
            child:
            Divider(
              color: Colors.grey,
              height: kDividerHeight,
              indent: kDividerIndentSmall,
              endIndent: kDividerIndentLarge,
            ),
          ),
        ],
      );
  }
}
