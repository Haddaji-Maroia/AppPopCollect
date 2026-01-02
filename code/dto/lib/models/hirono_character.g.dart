// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hirono_character.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_HironoCharacter _$HironoCharacterFromJson(Map<String, dynamic> json) =>
    _HironoCharacter(
      id: json['id'] as String,
      name: json['name'] as String,
      series: json['series'] as String,
      image: json['image'] as String,
      isOwned: json['isOwned'] as bool,
      price: (json['price'] as num).toDouble(),
    );

const _$HironoCharacterFieldMap = <String, String>{
  'id': 'id',
  'name': 'name',
  'series': 'series',
  'image': 'image',
  'isOwned': 'isOwned',
  'price': 'price',
};

// ignore: unused_element
abstract class _$HironoCharacterPerFieldToJson {
  // ignore: unused_element
  static Object? id(String instance) => instance;
  // ignore: unused_element
  static Object? name(String instance) => instance;
  // ignore: unused_element
  static Object? series(String instance) => instance;
  // ignore: unused_element
  static Object? image(String instance) => instance;
  // ignore: unused_element
  static Object? isOwned(bool instance) => instance;
  // ignore: unused_element
  static Object? price(double instance) => instance;
}

Map<String, dynamic> _$HironoCharacterToJson(_HironoCharacter instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'series': instance.series,
      'image': instance.image,
      'isOwned': instance.isOwned,
      'price': instance.price,
    };
