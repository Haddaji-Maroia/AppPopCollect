// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppActivity _$AppActivityFromJson(Map<String, dynamic> json) => _AppActivity(
      id: json['id'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      type: json['type'] as String,
      date: DateTime.parse(json['date'] as String),
      icon: json['icon'] as String,
    );

const _$AppActivityFieldMap = <String, String>{
  'id': 'id',
  'title': 'title',
  'description': 'description',
  'type': 'type',
  'date': 'date',
  'icon': 'icon',
};

// ignore: unused_element
abstract class _$AppActivityPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? title(String instance) => instance;
  // ignore: unused_element
  static Object? description(String instance) => instance;
  // ignore: unused_element
  static Object? type(String instance) => instance;
  // ignore: unused_element
  static Object? date(DateTime instance) => instance.toIso8601String();
  // ignore: unused_element
  static Object? icon(String instance) => instance;
}

Map<String, dynamic> _$AppActivityToJson(_AppActivity instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'type': instance.type,
      'date': instance.date.toIso8601String(),
      'icon': instance.icon,
    };
