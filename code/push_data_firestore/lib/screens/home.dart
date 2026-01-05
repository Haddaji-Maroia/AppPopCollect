import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dto/dto.dart';
import '../data/database_setup.dart';
import '../data/hirono_characters.dart';
import '../data/hirono_series_data.dart';
import '../data/collections_data.dart';

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

    FirebaseAuth.instance.signInAnonymously().then((userCredential) {
      print("Logged as: ${userCredential.user?.uid}");
      setState(() => logs.insert(0, 'Authenticated as: ${userCredential.user?.uid}'));
    });
  }

  Future<void> pushCharacters() async {
    setState(() => logs.insert(0, 'Loading characters...'));
    try {
      for (var char in hironoCharacters) {
        await db.characters.upsert(char);
        setState(() => logs.insert(0, '✅ OK: ${char.name}'));
      }
    } catch (e) {
      setState(() => logs.insert(0, '❌ ERROR: $e'));
    }
  }

  Future<void> pushSeries() async {
    setState(() => logs.insert(0, 'Loading series...'));
    try {
      for (var series in hironoSeriesList) {
        await db.series.upsert(series);
        setState(() => logs.insert(0, '✅ OK: ${series.title}'));
      }
    } catch (e) {
      setState(() => logs.insert(0, '❌ ERROR: $e'));
    }
  }

  Future<void> pushCollections() async {
    setState(() => logs.insert(0, 'Loading collections...'));
    try {
      for (var col in allCollectionsList) {
        await db.collections.upsert(col);
        setState(() => logs.insert(0, '✅ OK: ${(col as dynamic).name}'));
      }
    } catch (e) {
      setState(() => logs.insert(0, '❌ ERROR: $e'));
      print("Detailed error: $e");
    }
  }

  Future<void> pushFullSetup() async {
    setState(() => logs.insert(0, 'Starting full database setup...'));
    try {
      await DatabaseSetup.setupFullDatabase();
      setState(() => logs.insert(0, '✅ DATABASE READY!'));
    } catch (e) {
      setState(() => logs.insert(0, '❌ CRITICAL ERROR: $e'));
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
      floatingActionButton: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton.extended(
            heroTag: 'char',
            onPressed: pushCharacters,
            label: const Text('Characters'),
            icon: const Icon(Icons.person),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            heroTag: 'series',
            onPressed: pushSeries,
            label: const Text('Series'),
            backgroundColor: Colors.orange,
            icon: const Icon(Icons.layers),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            heroTag: 'collections',
            onPressed: pushCollections,
            label: const Text('Collections'),
            backgroundColor: Colors.green,
            icon: const Icon(Icons.folder),
          ),
          const SizedBox(height: 10),
          FloatingActionButton.extended(
            heroTag: 'full_setup',
            onPressed: pushFullSetup,
            label: const Text('FULL SETUP'),
            backgroundColor: Colors.black,
            icon: const Icon(Icons.rocket_launch),
          ),
        ],
      ),
    );
  }
}