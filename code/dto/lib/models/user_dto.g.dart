// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppUser _$AppUserFromJson(Map<String, dynamic> json) => _AppUser(
      id: json['id'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      collectingSince: json['collectingSince'] as String,
      figuresCount: (json['figuresCount'] as num).toInt(),
      secretCount: (json['secretCount'] as num).toInt(),
      totalValue: (json['totalValue'] as num).toDouble(),
      avatarUrl: json['avatarUrl'] as String?,
    );

const _$AppUserFieldMap = <String, String>{
  'id': 'id',
  'username': 'username',
  'email': 'email',
  'collectingSince': 'collectingSince',
  'figuresCount': 'figuresCount',
  'secretCount': 'secretCount',
  'totalValue': 'totalValue',
  'avatarUrl': 'avatarUrl',
};

// ignore: unused_element
abstract class _$AppUserPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? username(String instance) => instance;
  // ignore: unused_element
  static Object? email(String instance) => instance;
  // ignore: unused_element
  static Object? collectingSince(String instance) => instance;
  // ignore: unused_element
  static Object? figuresCount(int instance) => instance;
  // ignore: unused_element
  static Object? secretCount(int instance) => instance;
  // ignore: unused_element
  static Object? totalValue(double instance) => instance;
  // ignore: unused_element
  static Object? avatarUrl(String? instance) => instance;
}

Map<String, dynamic> _$AppUserToJson(_AppUser instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'email': instance.email,
      'collectingSince': instance.collectingSince,
      'figuresCount': instance.figuresCount,
      'secretCount': instance.secretCount,
      'totalValue': instance.totalValue,
      'avatarUrl': instance.avatarUrl,
    };
