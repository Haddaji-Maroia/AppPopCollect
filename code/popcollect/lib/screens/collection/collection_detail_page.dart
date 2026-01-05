import 'package:flutter/material.dart';
import 'package:dto/dto.dart';

class CollectionDetailPage extends StatelessWidget {
  final AppCollection collection;

  const CollectionDetailPage({super.key, required this.collection});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(collection.name)),
      body: Center(
        child: Text('Dettagli per ${collection.name}\n(Pagina in costruzione)'),
      ),
    );
  }
}