import 'package:firestore_odm/firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity.freezed.dart';
part 'activity.g.dart';

@freezed
abstract class AppActivity with _$AppActivity {
  const factory AppActivity({
    @DocumentIdField() required String id,
    required String title,
    required String description,
    required String type,
    required DateTime date,
    required String icon,
  }) = _AppActivity;

  factory AppActivity.fromJson(Map<String, dynamic> json) =>
      _$AppActivityFromJson(json);
}