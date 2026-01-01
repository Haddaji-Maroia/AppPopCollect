import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../models/series_character.dart';
import '../../widgets/other_one/character_header_image.dart';
import '../../widgets/other_one/character_info.dart';
import '../../widgets/other_one/collection_button.dart';
import '../../widgets/other_one/collection_details_form.dart';


class HironoCharacterPage extends StatefulWidget {
  final SeriesCharacter character;

  const HironoCharacterPage({
    super.key,
    required this.character,
  });

  @override
  State<HironoCharacterPage> createState() => _HironoCharacterPageState();
}

class _HironoCharacterPageState extends State<HironoCharacterPage> {
  bool inCollection = false;
  bool editMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(widget.character.name),
        actions: [
          if (inCollection)
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
              // SOLO rimozione foto (futura)
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Photo removed')),
              );

            },
          ),

          const SizedBox(height: kSpacingL),

          CharacterInfo(character: widget.character),

          const SizedBox(height: kSpacingL),

          // ADD / IN COLLECTION
          if (!inCollection)
            CollectionButton(
              inCollection: false,
              onAdd: () => setState(() => inCollection = true),
            )
          else
            Column(
              children: [
                // IN COLLECTION
                CollectionButton(
                  inCollection: true,
                ),

                const SizedBox(height: kSpacingS),

                // REMOVE FROM COLLECTION
                OutlinedButton.icon(
                  onPressed: () {
                    setState(() {
                      inCollection = false;
                      editMode = false;
                    });
                  },
                  icon: const Icon(Icons.delete, color: Colors.red),
                  label: const Text(
                    'Remove from Collection',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              ],
            ),


          const SizedBox(height: kSpacingL),

          if (inCollection)
            CollectionDetailsForm(
              onCancel: () => setState(() => editMode = false),
              onSave: () => setState(() => editMode = false),
            ),
        ],
      ),
    );
  }
}
