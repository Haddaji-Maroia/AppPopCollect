import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';

class HironoCharacterPage extends StatelessWidget {
  const HironoCharacterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hirono Vampire'),
        leading: BackButton(),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(kHorizontalPadding),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // IMAGE
            Container(
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(kBorderRadius),
              ),
              child: const Center(
                child: Icon(Icons.image, size: 80),
              ),
            ),

            const SizedBox(height: kSpacingL),

            Text('Hirono Vampire', style: kTitleText),
            const SizedBox(height: kSpacingS),

            Text('Series: Monsters Carnival', style: kBodyText),
            Text('Artist: Lang', style: kBodyText),
            Text('Rarity: Standard', style: kBodyText),

            const SizedBox(height: kSpacingL),

            // CRUD ENTRY POINT
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  // TODO: qui faccio il CRUD
                },
                child: const Text('Add to Collection'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
