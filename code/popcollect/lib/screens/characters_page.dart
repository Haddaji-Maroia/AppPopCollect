import 'package:flutter/material.dart';


class CharactersPage extends StatelessWidget {
  static const routeName = '/characters';

  const CharactersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Characters')),
      body: const Center(
        child: Text('All characters list'),
      ),
    );
  }
}
