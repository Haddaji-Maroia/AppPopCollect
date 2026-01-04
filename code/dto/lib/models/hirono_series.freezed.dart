// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'hirono_series.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HironoSeries {
  @DocumentIdField()
  String get id;
  String get title;
  String get image;
  int get total;
  int get secret;
  String? get description;

  /// Create a copy of HironoSeries
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $HironoSeriesCopyWith<HironoSeries> get copyWith =>
      _$HironoSeriesCopyWithImpl<HironoSeries>(
          this as HironoSeries, _$identity);

  /// Serializes this HironoSeries to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is HironoSeries &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, total, secret, description);

  @override
  String toString() {
    return 'HironoSeries(id: $id, title: $title, image: $image, total: $total, secret: $secret, description: $description)';
  }
}

/// @nodoc
abstract mixin class $HironoSeriesCopyWith<$Res> {
  factory $HironoSeriesCopyWith(
          HironoSeries value, $Res Function(HironoSeries) _then) =
      _$HironoSeriesCopyWithImpl;
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String title,
      String image,
      int total,
      int secret,
      String? description});
}

/// @nodoc
class _$HironoSeriesCopyWithImpl<$Res> implements $HironoSeriesCopyWith<$Res> {
  _$HironoSeriesCopyWithImpl(this._self, this._then);

  final HironoSeries _self;
  final $Res Function(HironoSeries) _then;

  /// Create a copy of HironoSeries
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? total = null,
    Object? secret = null,
    Object? description = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
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
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [HironoSeries].
extension HironoSeriesPatterns on HironoSeries {
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
    TResult Function(_HironoSeries value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HironoSeries() when $default != null:
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
    TResult Function(_HironoSeries value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HironoSeries():
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
    TResult? Function(_HironoSeries value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HironoSeries() when $default != null:
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
    TResult Function(@DocumentIdField() String id, String title, String image,
            int total, int secret, String? description)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _HironoSeries() when $default != null:
        return $default(_that.id, _that.title, _that.image, _that.total,
            _that.secret, _that.description);
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
    TResult Function(@DocumentIdField() String id, String title, String image,
            int total, int secret, String? description)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HironoSeries():
        return $default(_that.id, _that.title, _that.image, _that.total,
            _that.secret, _that.description);
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
    TResult? Function(@DocumentIdField() String id, String title, String image,
            int total, int secret, String? description)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _HironoSeries() when $default != null:
        return $default(_that.id, _that.title, _that.image, _that.total,
            _that.secret, _that.description);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _HironoSeries implements HironoSeries {
  const _HironoSeries(
      {@DocumentIdField() required this.id,
      required this.title,
      required this.image,
      required this.total,
      required this.secret,
      this.description});
  factory _HironoSeries.fromJson(Map<String, dynamic> json) =>
      _$HironoSeriesFromJson(json);

  @override
  @DocumentIdField()
  final String id;
  @override
  final String title;
  @override
  final String image;
  @override
  final int total;
  @override
  final int secret;
  @override
  final String? description;

  /// Create a copy of HironoSeries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$HironoSeriesCopyWith<_HironoSeries> get copyWith =>
      __$HironoSeriesCopyWithImpl<_HironoSeries>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$HironoSeriesToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _HironoSeries &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.total, total) || other.total == total) &&
            (identical(other.secret, secret) || other.secret == secret) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, image, total, secret, description);

  @override
  String toString() {
    return 'HironoSeries(id: $id, title: $title, image: $image, total: $total, secret: $secret, description: $description)';
  }
}

/// @nodoc
abstract mixin class _$HironoSeriesCopyWith<$Res>
    implements $HironoSeriesCopyWith<$Res> {
  factory _$HironoSeriesCopyWith(
          _HironoSeries value, $Res Function(_HironoSeries) _then) =
      __$HironoSeriesCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String title,
      String image,
      int total,
      int secret,
      String? description});
}

/// @nodoc
class __$HironoSeriesCopyWithImpl<$Res>
    implements _$HironoSeriesCopyWith<$Res> {
  __$HironoSeriesCopyWithImpl(this._self, this._then);

  final _HironoSeries _self;
  final $Res Function(_HironoSeries) _then;

  /// Create a copy of HironoSeries
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? image = null,
    Object? total = null,
    Object? secret = null,
    Object? description = freezed,
  }) {
    return _then(_HironoSeries(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
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
      description: freezed == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
