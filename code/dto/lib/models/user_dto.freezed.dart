// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AppUser {
  @DocumentIdField()
  String get id;
  String get username;
  String get email;
  String get collectingSince;
  int get figuresCount;
  int get secretCount;
  double get totalValue;
  String? get avatarUrl;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AppUserCopyWith<AppUser> get copyWith =>
      _$AppUserCopyWithImpl<AppUser>(this as AppUser, _$identity);

  /// Serializes this AppUser to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AppUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.collectingSince, collectingSince) ||
                other.collectingSince == collectingSince) &&
            (identical(other.figuresCount, figuresCount) ||
                other.figuresCount == figuresCount) &&
            (identical(other.secretCount, secretCount) ||
                other.secretCount == secretCount) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email,
      collectingSince, figuresCount, secretCount, totalValue, avatarUrl);

  @override
  String toString() {
    return 'AppUser(id: $id, username: $username, email: $email, collectingSince: $collectingSince, figuresCount: $figuresCount, secretCount: $secretCount, totalValue: $totalValue, avatarUrl: $avatarUrl)';
  }
}

/// @nodoc
abstract mixin class $AppUserCopyWith<$Res> {
  factory $AppUserCopyWith(AppUser value, $Res Function(AppUser) _then) =
      _$AppUserCopyWithImpl;
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String username,
      String email,
      String collectingSince,
      int figuresCount,
      int secretCount,
      double totalValue,
      String? avatarUrl});
}

/// @nodoc
class _$AppUserCopyWithImpl<$Res> implements $AppUserCopyWith<$Res> {
  _$AppUserCopyWithImpl(this._self, this._then);

  final AppUser _self;
  final $Res Function(AppUser) _then;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? collectingSince = null,
    Object? figuresCount = null,
    Object? secretCount = null,
    Object? totalValue = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_self.copyWith(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      collectingSince: null == collectingSince
          ? _self.collectingSince
          : collectingSince // ignore: cast_nullable_to_non_nullable
              as String,
      figuresCount: null == figuresCount
          ? _self.figuresCount
          : figuresCount // ignore: cast_nullable_to_non_nullable
              as int,
      secretCount: null == secretCount
          ? _self.secretCount
          : secretCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalValue: null == totalValue
          ? _self.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as double,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// Adds pattern-matching-related methods to [AppUser].
extension AppUserPatterns on AppUser {
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
    TResult Function(_AppUser value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
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
    TResult Function(_AppUser value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser():
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
    TResult? Function(_AppUser value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
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
    TResult Function(
            @DocumentIdField() String id,
            String username,
            String email,
            String collectingSince,
            int figuresCount,
            int secretCount,
            double totalValue,
            String? avatarUrl)?
        $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
        return $default(
            _that.id,
            _that.username,
            _that.email,
            _that.collectingSince,
            _that.figuresCount,
            _that.secretCount,
            _that.totalValue,
            _that.avatarUrl);
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
    TResult Function(
            @DocumentIdField() String id,
            String username,
            String email,
            String collectingSince,
            int figuresCount,
            int secretCount,
            double totalValue,
            String? avatarUrl)
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser():
        return $default(
            _that.id,
            _that.username,
            _that.email,
            _that.collectingSince,
            _that.figuresCount,
            _that.secretCount,
            _that.totalValue,
            _that.avatarUrl);
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
    TResult? Function(
            @DocumentIdField() String id,
            String username,
            String email,
            String collectingSince,
            int figuresCount,
            int secretCount,
            double totalValue,
            String? avatarUrl)?
        $default,
  ) {
    final _that = this;
    switch (_that) {
      case _AppUser() when $default != null:
        return $default(
            _that.id,
            _that.username,
            _that.email,
            _that.collectingSince,
            _that.figuresCount,
            _that.secretCount,
            _that.totalValue,
            _that.avatarUrl);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _AppUser implements AppUser {
  const _AppUser(
      {@DocumentIdField() required this.id,
      required this.username,
      required this.email,
      required this.collectingSince,
      required this.figuresCount,
      required this.secretCount,
      required this.totalValue,
      this.avatarUrl});
  factory _AppUser.fromJson(Map<String, dynamic> json) =>
      _$AppUserFromJson(json);

  @override
  @DocumentIdField()
  final String id;
  @override
  final String username;
  @override
  final String email;
  @override
  final String collectingSince;
  @override
  final int figuresCount;
  @override
  final int secretCount;
  @override
  final double totalValue;
  @override
  final String? avatarUrl;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AppUserCopyWith<_AppUser> get copyWith =>
      __$AppUserCopyWithImpl<_AppUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AppUserToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AppUser &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.username, username) ||
                other.username == username) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.collectingSince, collectingSince) ||
                other.collectingSince == collectingSince) &&
            (identical(other.figuresCount, figuresCount) ||
                other.figuresCount == figuresCount) &&
            (identical(other.secretCount, secretCount) ||
                other.secretCount == secretCount) &&
            (identical(other.totalValue, totalValue) ||
                other.totalValue == totalValue) &&
            (identical(other.avatarUrl, avatarUrl) ||
                other.avatarUrl == avatarUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, username, email,
      collectingSince, figuresCount, secretCount, totalValue, avatarUrl);

  @override
  String toString() {
    return 'AppUser(id: $id, username: $username, email: $email, collectingSince: $collectingSince, figuresCount: $figuresCount, secretCount: $secretCount, totalValue: $totalValue, avatarUrl: $avatarUrl)';
  }
}

/// @nodoc
abstract mixin class _$AppUserCopyWith<$Res> implements $AppUserCopyWith<$Res> {
  factory _$AppUserCopyWith(_AppUser value, $Res Function(_AppUser) _then) =
      __$AppUserCopyWithImpl;
  @override
  @useResult
  $Res call(
      {@DocumentIdField() String id,
      String username,
      String email,
      String collectingSince,
      int figuresCount,
      int secretCount,
      double totalValue,
      String? avatarUrl});
}

/// @nodoc
class __$AppUserCopyWithImpl<$Res> implements _$AppUserCopyWith<$Res> {
  __$AppUserCopyWithImpl(this._self, this._then);

  final _AppUser _self;
  final $Res Function(_AppUser) _then;

  /// Create a copy of AppUser
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? id = null,
    Object? username = null,
    Object? email = null,
    Object? collectingSince = null,
    Object? figuresCount = null,
    Object? secretCount = null,
    Object? totalValue = null,
    Object? avatarUrl = freezed,
  }) {
    return _then(_AppUser(
      id: null == id
          ? _self.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      username: null == username
          ? _self.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _self.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      collectingSince: null == collectingSince
          ? _self.collectingSince
          : collectingSince // ignore: cast_nullable_to_non_nullable
              as String,
      figuresCount: null == figuresCount
          ? _self.figuresCount
          : figuresCount // ignore: cast_nullable_to_non_nullable
              as int,
      secretCount: null == secretCount
          ? _self.secretCount
          : secretCount // ignore: cast_nullable_to_non_nullable
              as int,
      totalValue: null == totalValue
          ? _self.totalValue
          : totalValue // ignore: cast_nullable_to_non_nullable
              as double,
      avatarUrl: freezed == avatarUrl
          ? _self.avatarUrl
          : avatarUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

// dart format on
