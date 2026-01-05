import 'package:firestore_odm/firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'collection.freezed.dart';
part 'collection.g.dart';

@freezed
abstract class AppCollection with _$AppCollection {
  const factory AppCollection({
    @DocumentIdField() required String id,
    required String name,
    required String image,
    required int total,
    required int secret,
    required double price,
  }) = _AppCollection;

  factory AppCollection.fromJson(Map<String, dynamic> json) =>
      _$AppCollectionFromJson(json);
}