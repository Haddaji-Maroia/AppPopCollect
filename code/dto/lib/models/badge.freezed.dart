// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'badge.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppBadge {
  @DocumentIdField()
  String get id;
  String get name;
  String get criteria; // Es: "Possiedi 5 Hirono"
  String get iconPath;
  bool get isUnlocked;

  /// Create a copy of AppBadge
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppBadgeCopyWith<AppBadge> get copyWith =>
      _$AppBadgeCopyWithImpl<AppBadge>(this as AppBadge, _$identity);

  /// Serializes this AppBadge to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppBadge &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.criteria, criteria) ||
                other.criteria == criteria) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, criteria, iconPath, isUnlocked);

  @override
  String toString() {
    return 'AppBadge(id: $id, name: $name, criteria: $criteria, iconPath: $iconPath, isUnlocked: $isUnlocked)';
  }
}

/// @nodoc
abstract mixin class $AppBadgeCopyWith<$Res> {
  factory $AppBadgeCopyWith(AppBadge value, $Res Function(AppBadge) _then) =
      _$AppBadgeCopyWithImpl;
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String name,
      String criteria,
      String iconPath,
      bool isUnlocked});
}

/// @nodoc
class _$AppBadgeCopyWithImpl<$Res> implements $AppBadgeCopyWith<$Res> {
  _$AppBadgeCopyWithImpl(this._self, this._then);

  final AppBadge _self;
  final $Res Function(AppBadge) _then;

  /// Create a copy of AppBadge
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? criteria = null,
    Object? iconPath = null,
    Object? isUnlocked = null,
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
      criteria: null == criteria
          ? _self.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _self.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      isUnlocked: null == isUnlocked
          ? _self.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppBadge].
extension AppBadgePatterns on AppBadge {
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
    TResult Function(_AppBadge value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppBadge() when $default != null:
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
    TResult Function(_AppBadge value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppBadge():
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
    TResult? Function(_AppBadge value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppBadge() when $default != null:
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
    TResult Function(@DocumentIdField() String id, String name, String criteria,
            String iconPath, bool isUnlocked)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppBadge() when $default != null:
        return $default(_that.id, _that.name, _that.criteria, _that.iconPath,
            _that.isUnlocked);
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
    TResult Function(@DocumentIdField() String id, String name, String criteria,
            String iconPath, bool isUnlocked)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppBadge():
        return $default(_that.id, _that.name, _that.criteria, _that.iconPath,
            _that.isUnlocked);
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
    TResult? Function(@DocumentIdField() String id, String name,
            String criteria, String iconPath, bool isUnlocked)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppBadge() when $default != null:
        return $default(_that.id, _that.name, _that.criteria, _that.iconPath,
            _that.isUnlocked);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppBadge implements AppBadge {
  const _AppBadge(
      {@DocumentIdField() required this.id,
      required this.name,
      required this.criteria,
      required this.iconPath,
      required this.isUnlocked});
  factory _AppBadge.fromJson(Map<String, dynamic> json) =>
      _$AppBadgeFromJson(json);

  @override
  @DocumentIdField()
  final String id;
  @override
  final String name;
  @override
  final String criteria;
// Es: "Possiedi 5 Hirono"
  @override
  final String iconPath;
  @override
  final bool isUnlocked;

  /// Create a copy of AppBadge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppBadgeCopyWith<_AppBadge> get copyWith =>
      __$AppBadgeCopyWithImpl<_AppBadge>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppBadgeToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppBadge &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.criteria, criteria) ||
                other.criteria == criteria) &&
            (identical(other.iconPath, iconPath) ||
                other.iconPath == iconPath) &&
            (identical(other.isUnlocked, isUnlocked) ||
                other.isUnlocked == isUnlocked));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, criteria, iconPath, isUnlocked);

  @override
  String toString() {
    return 'AppBadge(id: $id, name: $name, criteria: $criteria, iconPath: $iconPath, isUnlocked: $isUnlocked)';
  }
}

/// @nodoc
abstract mixin class _$AppBadgeCopyWith<$Res>
    implements $AppBadgeCopyWith<$Res> {
  factory _$AppBadgeCopyWith(_AppBadge value, $Res Function(_AppBadge) _then) =
      __$AppBadgeCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String name,
      String criteria,
      String iconPath,
      bool isUnlocked});
}

/// @nodoc
class __$AppBadgeCopyWithImpl<$Res> implements _$AppBadgeCopyWith<$Res> {
  __$AppBadgeCopyWithImpl(this._self, this._then);

  final _AppBadge _self;
  final $Res Function(_AppBadge) _then;

  /// Create a copy of AppBadge
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? criteria = null,
    Object? iconPath = null,
    Object? isUnlocked = null,
  }) {
    return _then(_AppBadge(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      criteria: null == criteria
          ? _self.criteria
          : criteria // ignore: cast_nullable_to_non_nullable
              as String,
      iconPath: null == iconPath
          ? _self.iconPath
          : iconPath // ignore: cast_nullable_to_non_nullable
              as String,
      isUnlocked: null == isUnlocked
          ? _self.isUnlocked
          : isUnlocked // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
