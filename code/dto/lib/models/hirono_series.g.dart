// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hirono_series.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HironoSeries _$HironoSeriesFromJson(Map<String, dynamic> json) =>
    _HironoSeries(
      id: json['id'] as String,
      title: json['title'] as String,
      image: json['image'] as String,
      total: (json['total'] as num).toInt(),
      secret: (json['secret'] as num).toInt(),
      description: json['description'] as String?,
    );

const _$HironoSeriesFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'image': 'image',
  'total': 'total',
  'secret': 'secret',
  'description': 'description',
};

// ignore: unused_element
abstract class _$HironoSeriesPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? image(String instance) => instance;
  // ignore: unused_element
  static Object? total(int instance) => instance;
  // ignore: unused_element
  static Object? secret(int instance) => instance;
  // ignore: unused_element
  static Object? description(String? instance) => instance;
}

Map<String, dynamic> _$HironoSeriesToJson(_HironoSeries instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'image': instance.image,
      'total': instance.total,
      'secret': instance.secret,
      'description': instance.description,
    };
