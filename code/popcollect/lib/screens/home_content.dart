import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/home/artists_section.dart';
import '../widgets/home/arrivals_section.dart';
import '../widgets/home/charaters_section.dart';
import '../widgets/products/product_item.dart';
import '../widgets/search_bar_widget.dart';
import 'characters_page.dart';

class HomeContent extends StatelessWidget {
  const HomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchBarWidget(),
          const SizedBox(height: 30),

          //SEZIONE NOVITA
          ArrivalsSection(
            title: 'New additions',
            products: const [
              ProductItem(imagePath: 'assets/images/additions/pandaWednesday.jpg', title: 'SKULLPANDA × We..'),
              SizedBox(width: 10),
              ProductItem(imagePath: 'assets/images/additions/bunnyHirono.jpg', title: 'Hirono Monsters...'),
              SizedBox(width: 10),
              ProductItem(imagePath: 'assets/images/additions/iron-man.jpg', title: 'Marvel Across th..'),
              SizedBox(width: 10),
              ProductItem(imagePath: 'assets/images/additions/crybaby.jpg', title: 'CRYBABY CRYING...'),
            ],
          ),

          //SEZIONE ARRIVI
          ArrivalsSection(
            title: 'Future arrivals',
            products: const [
              ProductItem(imagePath: 'assets/images/arrivals/skullpanda1.jpg', title: 'SKULLPANDA The...'),
              SizedBox(width: 10),
              ProductItem(imagePath: 'assets/images/arrivals/polar.jpg', title: 'POLAR-Hide and...'),
              SizedBox(width: 10),
              ProductItem(imagePath: 'assets/images/arrivals/crybaby2.jpg', title: 'CRYBABY Vacation.. '),
              SizedBox(width: 10),
              ProductItem(imagePath: 'assets/images/arrivals/celebratePop.jpg', title: 'Celebrating the... '),
            ],
          ),


          SizedBox(height: 20.0),
          CharactersSection(),

          SizedBox(height: 50.0),


          //SEZIONE ARTISTI
          ArtistsSection(),

        ],
      ),
    );
  }
}

