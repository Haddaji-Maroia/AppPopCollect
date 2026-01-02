import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../widgets/other_one/character_header_image.dart';
import '../../widgets/other_one/character_info.dart';
import '../../widgets/other_one/collection_button.dart';
import '../../widgets/other_one/collection_details_form.dart';
import 'package:dto/dto.dart';

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
      body: ListView(
        padding: const EdgeInsets.all(kPagePadding),
        children: [
          CharacterHeaderImage(
            image: widget.character.image,
            editMode: editMode,
            onRemove: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Photo removed')),
              );
            },
          ),

          const SizedBox(height: kSpacingL),

          CharacterInfo(character: widget.character),

          const SizedBox(height: kSpacingL),

          // AGGIUNTA ALLA COLLEZIONE
          CollectionButton(
            inCollection: isCharacterOwned,
            onAdd: () {
              final updatedCharacter = widget.character.copyWith(isOwned: true);
              Navigator.pop(context, updatedCharacter);
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
              onPressed: () {
                final updatedCharacter = widget.character.copyWith(
                    isOwned: false,
                    price: 0.0
                );
                Navigator.pop(context, updatedCharacter);
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
              onSave: (newPrice) {
                final updatedCharacter = widget.character.copyWith(price: newPrice ?? 0.0);
                Navigator.pop(context, updatedCharacter);
              },
            ),
        ],
      ),
    );
  }
}