// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'collection.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppCollection {
  @DocumentIdField()
  String get id;
  String get name;
  String get image;
  int get total;
  int get secret;
  double get price;

  /// Create a copy of AppCollection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppCollectionCopyWith<AppCollection> get copyWith =>
      _$AppCollectionCopyWithImpl<AppCollection>(
          this as AppCollection, _$identity);

  /// Serializes this AppCollection to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppCollection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, total, secret, price);

  @override
  String toString() {
    return 'AppCollection(id: $id, name: $name, image: $image, total: $total, secret: $secret, price: $price)';
  }
}

/// @nodoc
abstract mixin class $AppCollectionCopyWith<$Res> {
  factory $AppCollectionCopyWith(
          AppCollection value, $Res Function(AppCollection) _then) =
      _$AppCollectionCopyWithImpl;
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String name,
      String image,
      int total,
      int secret,
      double price});
}

/// @nodoc
class _$AppCollectionCopyWithImpl<$Res>
    implements $AppCollectionCopyWith<$Res> {
  _$AppCollectionCopyWithImpl(this._self, this._then);

  final AppCollection _self;
  final $Res Function(AppCollection) _then;

  /// Create a copy of AppCollection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? total = null,
    Object? secret = null,
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
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      secret: null == secret
          ? _self.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppCollection].
extension AppCollectionPatterns on AppCollection {
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
    TResult Function(_AppCollection value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppCollection() when $default != null:
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
    TResult Function(_AppCollection value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppCollection():
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
    TResult? Function(_AppCollection value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppCollection() when $default != null:
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
    TResult Function(@DocumentIdField() String id, String name, String image,
            int total, int secret, double price)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppCollection() when $default != null:
        return $default(_that.id, _that.name, _that.image, _that.total,
            _that.secret, _that.price);
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
    TResult Function(@DocumentIdField() String id, String name, String image,
            int total, int secret, double price)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppCollection():
        return $default(_that.id, _that.name, _that.image, _that.total,
            _that.secret, _that.price);
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
    TResult? Function(@DocumentIdField() String id, String name, String image,
            int total, int secret, double price)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppCollection() when $default != null:
        return $default(_that.id, _that.name, _that.image, _that.total,
            _that.secret, _that.price);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppCollection implements AppCollection {
  const _AppCollection(
      {@DocumentIdField() required this.id,
      required this.name,
      required this.image,
      required this.total,
      required this.secret,
      required this.price});
  factory _AppCollection.fromJson(Map<String, dynamic> json) =>
      _$AppCollectionFromJson(json);

  @override
  @DocumentIdField()
  final String id;
  @override
  final String name;
  @override
  final String image;
  @override
  final int total;
  @override
  final int secret;
  @override
  final double price;

  /// Create a copy of AppCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppCollectionCopyWith<_AppCollection> get copyWith =>
      __$AppCollectionCopyWithImpl<_AppCollection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppCollectionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppCollection &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, image, total, secret, price);

  @override
  String toString() {
    return 'AppCollection(id: $id, name: $name, image: $image, total: $total, secret: $secret, price: $price)';
  }
}

/// @nodoc
abstract mixin class _$AppCollectionCopyWith<$Res>
    implements $AppCollectionCopyWith<$Res> {
  factory _$AppCollectionCopyWith(
          _AppCollection value, $Res Function(_AppCollection) _then) =
      __$AppCollectionCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String name,
      String image,
      int total,
      int secret,
      double price});
}

/// @nodoc
class __$AppCollectionCopyWithImpl<$Res>
    implements _$AppCollectionCopyWith<$Res> {
  __$AppCollectionCopyWithImpl(this._self, this._then);

  final _AppCollection _self;
  final $Res Function(_AppCollection) _then;

  /// Create a copy of AppCollection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? image = null,
    Object? total = null,
    Object? secret = null,
    Object? price = null,
  }) {
    return _then(_AppCollection(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      image: null == image
          ? _self.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      total: null == total
          ? _self.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      secret: null == secret
          ? _self.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _self.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

// dart format on
