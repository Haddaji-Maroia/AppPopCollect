import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import '../../widgets/other_one/character_header_image.dart';
import '../../widgets/other_one/character_info.dart';
import '../../widgets/other_one/collection_button.dart';
import '../../widgets/other_one/collection_details_form.dart';
import '../../widgets/other_one/remove_character_button.dart';
import 'package:dto/dto.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class HironoCharacterPage extends StatefulWidget {
  final HironoCharacter character;
  const HironoCharacterPage({super.key, required this.character});

  @override
  State<HironoCharacterPage> createState() => _HironoCharacterPageState();
}

class _HironoCharacterPageState extends State<HironoCharacterPage> {
  bool editMode = false;

  Future<void> _updateCharacter(Map<String, dynamic> data) async {
    await FirebaseFirestore.instance
        .collection('characters')
        .doc(widget.character.id)
        .update(data);
  }

  @override
  Widget build(BuildContext context) {
    final isCharacterOwned = widget.character.isOwned;

    return Scaffold(
      appBar: AppBar(
        leading: const BackButton(),
        title: Text(widget.character.name, style: kCardTitleText),
        actions: [
          if (isCharacterOwned)
            TextButton.icon(
              onPressed: () => setState(() => editMode = !editMode),
              icon: const Icon(Icons.edit, size: kIconS),
              label: Text(editMode ? 'Done' : 'Edit', style: kLinkText),
            ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(kPagePadding),
        children: [
          CharacterHeaderImage(
            image: widget.character.image,
            editMode: editMode,
            onCameraTap: () {},
            onRemove: () => _updateCharacter({'image': ''}),
          ),
          const SizedBox(height: kSpacingL),
          CharacterInfo(character: widget.character),
          const SizedBox(height: kSpacingL),
          CollectionButton(
            inCollection: isCharacterOwned,
            onAdd: () async {
              await _updateCharacter({'isOwned': true});
              if (mounted) Navigator.pop(context);
            },
            onRemove: () {},
          ),
          const SizedBox(height: kSpacingS),
          if (isCharacterOwned)
            RemoveCharacterButton(
              onPressed: () async {
                await _updateCharacter({
                  'isOwned': false,
                  'price': kInitialOwnedValue.toDouble(),
                });
                if (mounted) Navigator.pop(context);
              },
            ),
          const SizedBox(height: kSpacingL),
          if (isCharacterOwned)
            CollectionDetailsForm(
              initialPrice: widget.character.price,
              onCancel: () => setState(() => editMode = false),
              onSave: (newPrice) async {
                await _updateCharacter({
                  'price': newPrice ?? kInitialOwnedValue.toDouble()
                });
                if (mounted) Navigator.pop(context);
              },
            ),
        ],
      ),
    );
  }
}