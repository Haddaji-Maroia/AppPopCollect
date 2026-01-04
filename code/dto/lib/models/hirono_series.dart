import 'package:firestore_odm/firestore_odm.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'hirono_series.freezed.dart';
part 'hirono_series.g.dart';

@freezed
abstract class HironoSeries with _$HironoSeries {
  const factory HironoSeries({
    @DocumentIdField() required String id,
    required String title,
    required String image,
    required int total,
    required int secret,
    final String? description,
  }) = _HironoSeries;

  factory HironoSeries.fromJson(Map<String, dynamic> json) => _$HironoSeriesFromJson(json);
}