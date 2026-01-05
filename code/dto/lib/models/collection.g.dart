// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'collection.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AppCollection _$AppCollectionFromJson(Map<String, dynamic> json) =>
    _AppCollection(
      id: json['id'] as String,
      name: json['name'] as String,
      image: json['image'] as String,
      total: (json['total'] as num).toInt(),
      secret: (json['secret'] as num).toInt(),
      price: (json['price'] as num).toDouble(),
    );

const _$AppCollectionFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'image': 'image',
  'total': 'total',
  'secret': 'secret',
  'price': 'price',
};

// ignore: unused_element
abstract class _$AppCollectionPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? image(String instance) => instance;
  // ignore: unused_element
  static Object? total(int instance) => instance;
  // ignore: unused_element
  static Object? secret(int instance) => instance;
  // ignore: unused_element
  static Object? price(double instance) => instance;
}

Map<String, dynamic> _$AppCollectionToJson(_AppCollection instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'image': instance.image,
      'total': instance.total,
      'secret': instance.secret,
      'price': instance.price,
    };
