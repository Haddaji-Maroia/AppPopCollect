// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hirono_character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HironoCharacter {
  @DocumentIdField()
  String get id;
  String get name;
  String get series;
  String get image;
  bool get isOwned;
  double get price;

  /// Create a copy of HironoCharacter
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HironoCharacterCopyWith<HironoCharacter> get copyWith =>
      _$HironoCharacterCopyWithImpl<HironoCharacter>(
          this as HironoCharacter, _$identity);

  /// Serializes this HironoCharacter to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HironoCharacter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isOwned, isOwned) || other.isOwned == isOwned) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, series, image, isOwned, price);

  @override
  String toString() {
    return 'HironoCharacter(id: $id, name: $name, series: $series, image: $image, isOwned: $isOwned, price: $price)';
  }
}

/// @nodoc
abstract mixin class $HironoCharacterCopyWith<$Res> {
  factory $HironoCharacterCopyWith(
          HironoCharacter value, $Res Function(HironoCharacter) _then) =
      _$HironoCharacterCopyWithImpl;
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String name,
      String series,
      String image,
      bool isOwned,
      double price});
}

/// @nodoc
class _$HironoCharacterCopyWithImpl<$Res>
    implements $HironoCharacterCopyWith<$Res> {
  _$HironoCharacterCopyWithImpl(this._self, this._then);

  final HironoCharacter _self;
  final $Res Function(HironoCharacter) _then;

  /// Create a copy of HironoCharacter
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? series = null,
    Object? image = null,
    Object? isOwned = null,
    Object? price = null,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _self.series
          : series // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isOwned: null == isOwned
          ? _self.isOwned
          : isOwned // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [HironoCharacter].
extension HironoCharacterPatterns on HironoCharacter {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_HironoCharacter value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HironoCharacter() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_HironoCharacter value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HironoCharacter():
        return $default(_that);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_HironoCharacter value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HironoCharacter() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(@DocumentIdField() String id, String name, String series,
            String image, bool isOwned, double price)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HironoCharacter() when $default != null:
        return $default(_that.id, _that.name, _that.series, _that.image,
            _that.isOwned, _that.price);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(@DocumentIdField() String id, String name, String series,
            String image, bool isOwned, double price)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HironoCharacter():
        return $default(_that.id, _that.name, _that.series, _that.image,
            _that.isOwned, _that.price);
      case _:
        throw StateError('Unexpected subclass');
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(@DocumentIdField() String id, String name, String series,
            String image, bool isOwned, double price)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HironoCharacter() when $default != null:
        return $default(_that.id, _that.name, _that.series, _that.image,
            _that.isOwned, _that.price);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HironoCharacter implements HironoCharacter {
  const _HironoCharacter(
      {@DocumentIdField() required this.id,
      required this.name,
      required this.series,
      required this.image,
      required this.isOwned,
      required this.price});
  factory _HironoCharacter.fromJson(Map<String, dynamic> json) =>
      _$HironoCharacterFromJson(json);

  @override
  @DocumentIdField()
  final String id;
  @override
  final String name;
  @override
  final String series;
  @override
  final String image;
  @override
  final bool isOwned;
  @override
  final double price;

  /// Create a copy of HironoCharacter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HironoCharacterCopyWith<_HironoCharacter> get copyWith =>
      __$HironoCharacterCopyWithImpl<_HironoCharacter>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HironoCharacterToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HironoCharacter &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.series, series) || other.series == series) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.isOwned, isOwned) || other.isOwned == isOwned) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, series, image, isOwned, price);

  @override
  String toString() {
    return 'HironoCharacter(id: $id, name: $name, series: $series, image: $image, isOwned: $isOwned, price: $price)';
  }
}

/// @nodoc
abstract mixin class _$HironoCharacterCopyWith<$Res>
    implements $HironoCharacterCopyWith<$Res> {
  factory _$HironoCharacterCopyWith(
          _HironoCharacter value, $Res Function(_HironoCharacter) _then) =
      __$HironoCharacterCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String name,
      String series,
      String image,
      bool isOwned,
      double price});
}

/// @nodoc
class __$HironoCharacterCopyWithImpl<$Res>
    implements _$HironoCharacterCopyWith<$Res> {
  __$HironoCharacterCopyWithImpl(this._self, this._then);

  final _HironoCharacter _self;
  final $Res Function(_HironoCharacter) _then;

  /// Create a copy of HironoCharacter
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? series = null,
    Object? image = null,
    Object? isOwned = null,
    Object? price = null,
  }) {
    return _then(_HironoCharacter(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      series: null == series
          ? _self.series
          : series // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      isOwned: null == isOwned
          ? _self.isOwned
          : isOwned // ignore: cast_nullable_to_non_nullable
              as bool,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
