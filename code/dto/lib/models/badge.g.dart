// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'badge.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppBadge _$AppBadgeFromJson(Map<String, dynamic> json) => _AppBadge(
      id: json['id'] as String,
      name: json['name'] as String,
      criteria: json['criteria'] as String,
      iconPath: json['iconPath'] as String,
      isUnlocked: json['isUnlocked'] as bool,
    );

const _$AppBadgeFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'criteria': 'criteria',
  'iconPath': 'iconPath',
  'isUnlocked': 'isUnlocked',
};

// ignore: unused_element
abstract class _$AppBadgePerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? criteria(String instance) => instance;
  // ignore: unused_element
  static Object? iconPath(String instance) => instance;
  // ignore: unused_element
  static Object? isUnlocked(bool instance) => instance;
}

Map<String, dynamic> _$AppBadgeToJson(_AppBadge instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'criteria': instance.criteria,
      'iconPath': instance.iconPath,
      'isUnlocked': instance.isUnlocked,
    };
