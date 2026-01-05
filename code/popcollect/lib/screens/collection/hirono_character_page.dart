import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart'; // IMPORT AGGIUNTO
import 'dart:io';
import '../../constants/sizes.dart';
import '../../widgets/other_one/character_header_image.dart';
import '../../widgets/other_one/character_info.dart';
import '../../widgets/other_one/collection_button.dart';
import '../../widgets/other_one/collection_details_form.dart';
import 'package:dto/dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HironoCharacterPage extends StatefulWidget {
  final HironoCharacter character;

  const HironoCharacterPage({
    super.key,
    required this.character,
  });

  @override
  State<HironoCharacterPage> createState() => _HironoCharacterPageState();
}

class _HironoCharacterPageState extends State<HironoCharacterPage> {
  bool editMode = false;
  bool isUploading = false; // Per mostrare il caricamento
  final ImagePicker _picker = ImagePicker();

  // FUNZIONE PER SCATTARE LA FOTO
  Future<void> _takePicture() async {
    try {
      final XFile? photo = await _picker.pickImage(
        source: ImageSource.camera,
        maxWidth: 1000,
        imageQuality: 85,
      );

      if (photo != null) {
        setState(() => isUploading = true);

        // Qui dovresti caricare su Firebase Storage.
        // Per ora simuliamo l'aggiornamento del path su Firestore
        await FirebaseFirestore.instance
            .collection('characters')
            .doc(widget.character.id)
            .update({
          'image': photo.path, // In futuro qui metterai l'URL di Firebase Storage
        });

        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Photo updated successfully!')),
          );
        }
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error taking photo: $e')),
        );
      }
    } finally {
      if (mounted) setState(() => isUploading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    final isCharacterOwned = widget.character.isOwned;

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(widget.character.name),
        actions: [
          if (isCharacterOwned)
            TextButton.icon(
              onPressed: () {
                setState(() => editMode = !editMode);
              },
              icon: const Icon(Icons.edit, size: 18),
              label: Text(editMode ? 'Done' : 'Edit'),
            ),
        ],
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(kPagePadding),
            children: [
              CharacterHeaderImage(
                image: widget.character.image,
                editMode: editMode,
                // COLLEGA LA FUNZIONE AL WIDGET
                onCameraTap: _takePicture,
                onRemove: () async {
                  await FirebaseFirestore.instance
                      .collection('characters')
                      .doc(widget.character.id)
                      .update({'image': ''});

                  if (mounted) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('Photo removed')),
                    );
                  }
                },
              ),

              const SizedBox(height: kSpacingL),

              CharacterInfo(character: widget.character),

              const SizedBox(height: kSpacingL),

              // AGGIUNTA ALLA COLLEZIONE
              CollectionButton(
                inCollection: isCharacterOwned,
                onAdd: () async {
                  await FirebaseFirestore.instance
                      .collection('characters')
                      .doc(widget.character.id)
                      .update({'isOwned': true});

                  if (mounted) Navigator.pop(context);
                },
                onRemove: () {},
              ),

              const SizedBox(height: kSpacingS),

              // RIMOZIONE DALLA COLLEZIONE
              if (isCharacterOwned)
                OutlinedButton.icon(
                  style: OutlinedButton.styleFrom(
                    minimumSize: const Size.fromHeight(50),
                    side: const BorderSide(color: Colors.red),
                  ),
                  onPressed: () async {
                    await FirebaseFirestore.instance
                        .collection('characters')
                        .doc(widget.character.id)
                        .update({
                      'isOwned': false,
                      'price': 0.0,
                    });

                    if (mounted) Navigator.pop(context);
                  },
                  icon: const Icon(Icons.delete, color: Colors.red),
                  label: const Text(
                    'Remove from Collection',
                    style: TextStyle(color: Colors.red),
                  ),
                ),

              const SizedBox(height: kSpacingL),

              // MINI FORM
              if (isCharacterOwned)
                CollectionDetailsForm(
                  initialPrice: widget.character.price,
                  onCancel: () => setState(() => editMode = false),
                  onSave: (newPrice) async {
                    await FirebaseFirestore.instance
                        .collection('characters')
                        .doc(widget.character.id)
                        .update({'price': newPrice ?? 0.0});

                    if (mounted) Navigator.pop(context);
                  },
                ),
            ],
          ),

          // OVERLAY DI CARICAMENTO
          if (isUploading)
            Container(
              color: Colors.black26,
              child: const Center(child: CircularProgressIndicator()),
            ),
        ],
      ),
    );
  }
}