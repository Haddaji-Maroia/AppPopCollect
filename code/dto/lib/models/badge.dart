import 'package:firestore_odm/firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'badge.freezed.dart';
part 'badge.g.dart';

@freezed
abstract class AppBadge with _$AppBadge {
  const factory AppBadge({
    @DocumentIdField() required String id,
    required String name,
    required String criteria, // Es: "Possiedi 5 Hirono"
    required String iconPath,
    required bool isUnlocked,
  }) = _AppBadge;

  factory AppBadge.fromJson(Map<String, dynamic> json) =>
      _$AppBadgeFromJson(json);
}