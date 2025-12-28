import 'package:flutter/material.dart';
import 'package:popcollect2/widgets/hirono/single_card_character.dart';


class HironoSeriesPage extends StatelessWidget {
  const HironoSeriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Monsters Carnival'),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Container(
            height: 160,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Center(child: Icon(Icons.image, size: 50, color: Colors.grey)),
          ),

          const SizedBox(height: 20),

          const Text(
            "Personaggi della serie",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: 15),

          GridView.count(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            mainAxisSpacing: 10,
            crossAxisSpacing: 10,
            childAspectRatio: 0.8,
            children: const [
              SingleCardCharacter(nome: 'Vampire', ceLho: true),
              SingleCardCharacter(nome: 'Killer Bunny', ceLho: false),
              SingleCardCharacter(nome: 'Creepy Clown', ceLho: false),
              SingleCardCharacter(nome: 'Grim Reaper', ceLho: true),
            ],
          ),
        ],
      ),
    );
  }
}