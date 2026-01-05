import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../home/whats_new_section.dart';
import '../home/charaters_section.dart';


class HomeMainSections extends StatelessWidget {
  const HomeMainSections({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kPagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          SizedBox(height: kSpacingXL),
          WhatsNewSection(),
          SizedBox(height: kSpacingXL),
          CharactersSection(),
          SizedBox(height: kSpacingXL),
        ],
      ),
    );
  }
}