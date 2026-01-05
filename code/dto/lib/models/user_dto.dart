import 'package:firestore_odm/firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
abstract class AppUser with _$AppUser {
  const factory AppUser({
    @DocumentIdField() required String id,
    required String username,
    required String email,
    required String collectingSince,
    required int figuresCount,
    required int secretCount,
    required double totalValue,
    String? avatarUrl,
  }) = _AppUser;

  factory AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);
}