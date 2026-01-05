// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'activity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppActivity {
  @DocumentIdField()
  String get id;
  String get title;
  String get description;
  String get type;
  DateTime get date;
  String get icon;

  /// Create a copy of AppActivity
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppActivityCopyWith<AppActivity> get copyWith =>
      _$AppActivityCopyWithImpl<AppActivity>(this as AppActivity, _$identity);

  /// Serializes this AppActivity to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppActivity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, type, date, icon);

  @override
  String toString() {
    return 'AppActivity(id: $id, title: $title, description: $description, type: $type, date: $date, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class $AppActivityCopyWith<$Res> {
  factory $AppActivityCopyWith(
          AppActivity value, $Res Function(AppActivity) _then) =
      _$AppActivityCopyWithImpl;
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String title,
      String description,
      String type,
      DateTime date,
      String icon});
}

/// @nodoc
class _$AppActivityCopyWithImpl<$Res> implements $AppActivityCopyWith<$Res> {
  _$AppActivityCopyWithImpl(this._self, this._then);

  final AppActivity _self;
  final $Res Function(AppActivity) _then;

  /// Create a copy of AppActivity
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? date = null,
    Object? icon = null,
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
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppActivity].
extension AppActivityPatterns on AppActivity {
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
    TResult Function(_AppActivity value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppActivity() when $default != null:
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
    TResult Function(_AppActivity value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppActivity():
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
    TResult? Function(_AppActivity value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppActivity() when $default != null:
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
    TResult Function(@DocumentIdField() String id, String title,
            String description, String type, DateTime date, String icon)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppActivity() when $default != null:
        return $default(_that.id, _that.title, _that.description, _that.type,
            _that.date, _that.icon);
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
    TResult Function(@DocumentIdField() String id, String title,
            String description, String type, DateTime date, String icon)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppActivity():
        return $default(_that.id, _that.title, _that.description, _that.type,
            _that.date, _that.icon);
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
    TResult? Function(@DocumentIdField() String id, String title,
            String description, String type, DateTime date, String icon)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppActivity() when $default != null:
        return $default(_that.id, _that.title, _that.description, _that.type,
            _that.date, _that.icon);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppActivity implements AppActivity {
  const _AppActivity(
      {@DocumentIdField() required this.id,
      required this.title,
      required this.description,
      required this.type,
      required this.date,
      required this.icon});
  factory _AppActivity.fromJson(Map<String, dynamic> json) =>
      _$AppActivityFromJson(json);

  @override
  @DocumentIdField()
  final String id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String type;
  @override
  final DateTime date;
  @override
  final String icon;

  /// Create a copy of AppActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppActivityCopyWith<_AppActivity> get copyWith =>
      __$AppActivityCopyWithImpl<_AppActivity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppActivityToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppActivity &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.type, type) || other.type == type) &&
            (identical(other.date, date) || other.date == date) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, title, description, type, date, icon);

  @override
  String toString() {
    return 'AppActivity(id: $id, title: $title, description: $description, type: $type, date: $date, icon: $icon)';
  }
}

/// @nodoc
abstract mixin class _$AppActivityCopyWith<$Res>
    implements $AppActivityCopyWith<$Res> {
  factory _$AppActivityCopyWith(
          _AppActivity value, $Res Function(_AppActivity) _then) =
      __$AppActivityCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String title,
      String description,
      String type,
      DateTime date,
      String icon});
}

/// @nodoc
class __$AppActivityCopyWithImpl<$Res> implements _$AppActivityCopyWith<$Res> {
  __$AppActivityCopyWithImpl(this._self, this._then);

  final _AppActivity _self;
  final $Res Function(_AppActivity) _then;

  /// Create a copy of AppActivity
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? type = null,
    Object? date = null,
    Object? icon = null,
  }) {
    return _then(_AppActivity(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _self.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _self.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      date: null == date
          ? _self.date
          : date // ignore: cast_nullable_to_non_nullable
              as DateTime,
      icon: null == icon
          ? _self.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
