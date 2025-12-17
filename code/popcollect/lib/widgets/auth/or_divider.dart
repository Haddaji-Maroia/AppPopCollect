import 'package:flutter/material.dart';


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
              height: 60.0,
              indent: 60,
              endIndent: 5,
            ),
          ),

          Text('OR', style: TextStyle(
            color: Colors.grey,
            fontSize: 16.0,
          ),
          ),

          Flexible(
            child:
            Divider(
              color: Colors.grey,
              height: 60.0,
              indent: 5,
              endIndent: 60,
            ),
          ),
        ],
      );
  }
}
