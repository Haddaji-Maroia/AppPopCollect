import 'package:flutter/material.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/collection/collection_card.dart';

class CollectionPage extends StatelessWidget {
  static const routeName = '/collection';

  const CollectionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'My Collections',
                    style: kTitleText,
                  ),
                Text(
                  '5 collections',
                  style: kSecondaryText,
                 ),
                ],
              ),

              SizedBox(height: kSpacingL),

              CollectionCard(
                name: 'Hirono',
                image: 'assets/images/collections/hirono3.jpeg',
                owned: 29,
                total: 101,
                price: 187.50,
                secret: 6,
              ),

              CollectionCard(
                name: 'SKULLPANDA',
                image: 'assets/images/collections/skull3.jpg',
                owned: 12,
                total: 121,
                price: 45.50,
                secret: 1,
              ),

              CollectionCard(
                name: 'DIMOO',
                image: 'assets/images/collections/dimoo.jpg',
                owned: 12,
                total: 121,
                price: 45.50,
                secret: 1,
              ),

              CollectionCard(
                name: 'AZURA',
                image: 'assets/images/collections/azura.jpg',
                owned: 5,
                total: 121,
                price: 50.0,
                secret: 1,
              ),

              CollectionCard(
                name: 'KUBO',
                image: 'assets/images/collections/kubo.jpg',
                owned: 3,
                total: 121,
                price: 28.90,
                secret: 0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
