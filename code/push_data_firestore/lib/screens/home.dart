import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import '../data/hirono_characters.dart';
import '../data/hirono_series_data.dart';

class Home extends StatefulWidget {
  const Home({super.key, required this.title});
  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final FirestoreODM<AppSchema> db;
  final List<String> logs = [];

  @override
  void initState() {
    super.initState();
    db = FirestoreODM(appSchema, firestore: FirebaseFirestore.instance);
  }

  // --- MODIFICA QUESTE DUE FUNZIONI NELLA TUA HOME ---

  Future<void> pushCharacters() async {
    setState(() => logs.insert(0, '👤 Caricamento personaggi...'));
    try {
      for (var char in hironoCharacters) {
        // CAMBIA .insert CON .upsert
        await db.characters.upsert(char);
        setState(() => logs.insert(0, '✅ OK: ${char.name}'));
      }
    } catch (e) {
      setState(() => logs.insert(0, '❌ ERRORE: $e'));
    }
  }

  Future<void> pushSeries() async {
    setState(() => logs.insert(0, '📦 Caricamento serie...'));
    try {
      for (var series in hironoSeriesList) {
        // CAMBIA .insert CON .upsert
        await db.series.upsert(series);
        setState(() => logs.insert(0, '✅ OK: ${series.title}'));
      }
    } catch (e) {
      setState(() => logs.insert(0, '❌ ERRORE: $e'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: logs.length,
        itemBuilder: (context, index) => Text(logs[index]),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          FloatingActionButton.extended(
            heroTag: 'char',
            onPressed: pushCharacters,
            label: const Text('Personaggi'),
          ),
          FloatingActionButton.extended(
            heroTag: 'series',
            onPressed: pushSeries,
            label: const Text('Serie'),
            backgroundColor: Colors.orange,
          ),
        ],
      ),
    );
  }
}