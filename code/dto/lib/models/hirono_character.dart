import 'package:firestore_odm/firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hirono_character.freezed.dart';
part 'hirono_character.g.dart';

@freezed
abstract class HironoCharacter with _$HironoCharacter {
  const factory HironoCharacter({
    @DocumentIdField() required String id,
    required String name,
    required String series,
    required String image,
    required bool isOwned,
    required double price,
  }) = _HironoCharacter;

  factory HironoCharacter.fromJson(Map<String, dynamic> json) =>
      _$HironoCharacterFromJson(json);
}