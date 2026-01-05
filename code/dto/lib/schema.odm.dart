// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schema.dart';

// **************************************************************************
// FirestoreGenerator
// **************************************************************************

/// Identifiers for all Firestore collections in the schema
/// Used to map collection paths to their respective collection classes
/// By combining collection classes (e.g., as tuple types),
/// we can use extension methods with record types to reduce boilerplate
/// Example: (_$UsersCollection, _$PostsCollection)
final class _$CharactersCollection {}

final class _$SeriesCollection {}

final class _$CollectionsCollection {}

final class _$UsersCollection {}

final class _$ActivitiesCollection {}

final class _$BadgesCollection {}

/// Generated schema class - dummy class that only serves as type marker
class AppSchema extends FirestoreSchema {
  const AppSchema();
}

/// Generated schema instance
const AppSchema _$AppSchema = AppSchema();

/// Generated FilterSelector for `HironoCharacter`
extension AppSchemaHironoCharacterFilterSelectorExtension
    on FilterSelector<HironoCharacter> {
  /// Filter by document ID (id field)
  @pragma('vm:prefer-inline')
  DocumentIdFieldFilter get id => DocumentIdFieldFilter(
        name: 'id',
        parent: this,
      );

  /// Filter by name
  StringFieldFilter get name => StringFieldFilter(
        name: 'name',
        parent: this,
      );

  /// Filter by series
  StringFieldFilter get series => StringFieldFilter(
        name: 'series',
        parent: this,
      );

  /// Filter by image
  StringFieldFilter get image => StringFieldFilter(
        name: 'image',
        parent: this,
      );

  /// Filter by isOwned
  BoolFieldFilter get isOwned => BoolFieldFilter(
        name: 'isOwned',
        parent: this,
      );

  /// Filter by price
  NumericFieldFilter get price => NumericFieldFilter(
        name: 'price',
        parent: this,
      );
}

/// Generated OrderByFieldSelector for `HironoCharacter`
extension AppSchemaHironoCharacterOrderByFieldSelectorExtension
    on OrderByFieldSelector<HironoCharacter> {
  /// Order by document ID (id field)
  OrderByField<String> get id => OrderByField(
        name: 'id',
        parent: this,
        type: FieldPathType.documentId,
      );

  /// Order by name
  OrderByField<String> get name => OrderByField(
        name: 'name',
        parent: this,
      );

  /// Order by series
  OrderByField<String> get series => OrderByField(
        name: 'series',
        parent: this,
      );

  /// Order by image
  OrderByField<String> get image => OrderByField(
        name: 'image',
        parent: this,
      );

  /// Order by isOwned
  OrderByField<bool> get isOwned => OrderByField(
        name: 'isOwned',
        parent: this,
      );

  /// Order by price
  OrderByField<double> get price => OrderByField(
        name: 'price',
        parent: this,
      );
}

/// Generated AggregateFieldSelector for HironoCharacter
extension AppSchemaHironoCharacterAggregateFieldSelectorExtension
    on AggregateFieldSelector<HironoCharacter> {
  /// price field for aggregation
  AggregateField<double> get price => AggregateField(
        name: 'price',
        parent: this,
      );
}

extension AppSchemaHironoCharacterPatchBuilder
    on PatchBuilder<HironoCharacter> {
  /// Update id field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get id => PatchBuilder(
        name: 'id',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update name field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get name => PatchBuilder(
        name: 'name',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update series field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get series => PatchBuilder(
        name: 'series',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update image field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get image => PatchBuilder(
        name: 'image',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update isOwned field `bool`
  @pragma('vm:prefer-inline')
  PatchBuilder<bool> get isOwned => PatchBuilder(
        name: 'isOwned',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update price field `double`
  @pragma('vm:prefer-inline')
  NumericFieldUpdate<double> get price => NumericFieldUpdate(
        name: 'price',
        parent: this,
        converter: const PrimitiveConverter(),
      );
}

/// Generated FilterSelector for `HironoSeries`
extension AppSchemaHironoSeriesFilterSelectorExtension
    on FilterSelector<HironoSeries> {
  /// Filter by document ID (id field)
  @pragma('vm:prefer-inline')
  DocumentIdFieldFilter get id => DocumentIdFieldFilter(
        name: 'id',
        parent: this,
      );

  /// Filter by title
  StringFieldFilter get title => StringFieldFilter(
        name: 'title',
        parent: this,
      );

  /// Filter by image
  StringFieldFilter get image => StringFieldFilter(
        name: 'image',
        parent: this,
      );

  /// Filter by total
  NumericFieldFilter get total => NumericFieldFilter(
        name: 'total',
        parent: this,
      );

  /// Filter by secret
  NumericFieldFilter get secret => NumericFieldFilter(
        name: 'secret',
        parent: this,
      );

  /// Filter by description
  StringFieldFilter get description => StringFieldFilter(
        name: 'description',
        parent: this,
      );
}

/// Generated OrderByFieldSelector for `HironoSeries`
extension AppSchemaHironoSeriesOrderByFieldSelectorExtension
    on OrderByFieldSelector<HironoSeries> {
  /// Order by document ID (id field)
  OrderByField<String> get id => OrderByField(
        name: 'id',
        parent: this,
        type: FieldPathType.documentId,
      );

  /// Order by title
  OrderByField<String> get title => OrderByField(
        name: 'title',
        parent: this,
      );

  /// Order by image
  OrderByField<String> get image => OrderByField(
        name: 'image',
        parent: this,
      );

  /// Order by total
  OrderByField<int> get total => OrderByField(
        name: 'total',
        parent: this,
      );

  /// Order by secret
  OrderByField<int> get secret => OrderByField(
        name: 'secret',
        parent: this,
      );

  /// Order by description
  OrderByField<String?> get description => OrderByField(
        name: 'description',
        parent: this,
      );
}

/// Generated AggregateFieldSelector for HironoSeries
extension AppSchemaHironoSeriesAggregateFieldSelectorExtension
    on AggregateFieldSelector<HironoSeries> {
  /// total field for aggregation
  AggregateField<int> get total => AggregateField(
        name: 'total',
        parent: this,
      );

  /// secret field for aggregation
  AggregateField<int> get secret => AggregateField(
        name: 'secret',
        parent: this,
      );
}

extension AppSchemaHironoSeriesPatchBuilder on PatchBuilder<HironoSeries> {
  /// Update id field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get id => PatchBuilder(
        name: 'id',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update title field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get title => PatchBuilder(
        name: 'title',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update image field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get image => PatchBuilder(
        name: 'image',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update total field `int`
  @pragma('vm:prefer-inline')
  NumericFieldUpdate<int> get total => NumericFieldUpdate(
        name: 'total',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update secret field `int`
  @pragma('vm:prefer-inline')
  NumericFieldUpdate<int> get secret => NumericFieldUpdate(
        name: 'secret',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update description field `String?`
  @pragma('vm:prefer-inline')
  PatchBuilder<String?> get description => PatchBuilder(
        name: 'description',
        parent: this,
        converter: NullableConverter(const PrimitiveConverter()),
      );
}

/// Generated FilterSelector for `AppCollection`
extension AppSchemaAppCollectionFilterSelectorExtension
    on FilterSelector<AppCollection> {
  /// Filter by document ID (id field)
  @pragma('vm:prefer-inline')
  DocumentIdFieldFilter get id => DocumentIdFieldFilter(
        name: 'id',
        parent: this,
      );

  /// Filter by name
  StringFieldFilter get name => StringFieldFilter(
        name: 'name',
        parent: this,
      );

  /// Filter by image
  StringFieldFilter get image => StringFieldFilter(
        name: 'image',
        parent: this,
      );

  /// Filter by total
  NumericFieldFilter get total => NumericFieldFilter(
        name: 'total',
        parent: this,
      );

  /// Filter by secret
  NumericFieldFilter get secret => NumericFieldFilter(
        name: 'secret',
        parent: this,
      );

  /// Filter by price
  NumericFieldFilter get price => NumericFieldFilter(
        name: 'price',
        parent: this,
      );
}

/// Generated OrderByFieldSelector for `AppCollection`
extension AppSchemaAppCollectionOrderByFieldSelectorExtension
    on OrderByFieldSelector<AppCollection> {
  /// Order by document ID (id field)
  OrderByField<String> get id => OrderByField(
        name: 'id',
        parent: this,
        type: FieldPathType.documentId,
      );

  /// Order by name
  OrderByField<String> get name => OrderByField(
        name: 'name',
        parent: this,
      );

  /// Order by image
  OrderByField<String> get image => OrderByField(
        name: 'image',
        parent: this,
      );

  /// Order by total
  OrderByField<int> get total => OrderByField(
        name: 'total',
        parent: this,
      );

  /// Order by secret
  OrderByField<int> get secret => OrderByField(
        name: 'secret',
        parent: this,
      );

  /// Order by price
  OrderByField<double> get price => OrderByField(
        name: 'price',
        parent: this,
      );
}

/// Generated AggregateFieldSelector for AppCollection
extension AppSchemaAppCollectionAggregateFieldSelectorExtension
    on AggregateFieldSelector<AppCollection> {
  /// total field for aggregation
  AggregateField<int> get total => AggregateField(
        name: 'total',
        parent: this,
      );

  /// secret field for aggregation
  AggregateField<int> get secret => AggregateField(
        name: 'secret',
        parent: this,
      );

  /// price field for aggregation
  AggregateField<double> get price => AggregateField(
        name: 'price',
        parent: this,
      );
}

extension AppSchemaAppCollectionPatchBuilder on PatchBuilder<AppCollection> {
  /// Update id field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get id => PatchBuilder(
        name: 'id',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update name field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get name => PatchBuilder(
        name: 'name',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update image field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get image => PatchBuilder(
        name: 'image',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update total field `int`
  @pragma('vm:prefer-inline')
  NumericFieldUpdate<int> get total => NumericFieldUpdate(
        name: 'total',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update secret field `int`
  @pragma('vm:prefer-inline')
  NumericFieldUpdate<int> get secret => NumericFieldUpdate(
        name: 'secret',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update price field `double`
  @pragma('vm:prefer-inline')
  NumericFieldUpdate<double> get price => NumericFieldUpdate(
        name: 'price',
        parent: this,
        converter: const PrimitiveConverter(),
      );
}

/// Generated FilterSelector for `AppUser`
extension AppSchemaAppUserFilterSelectorExtension on FilterSelector<AppUser> {
  /// Filter by document ID (id field)
  @pragma('vm:prefer-inline')
  DocumentIdFieldFilter get id => DocumentIdFieldFilter(
        name: 'id',
        parent: this,
      );

  /// Filter by username
  StringFieldFilter get username => StringFieldFilter(
        name: 'username',
        parent: this,
      );

  /// Filter by email
  StringFieldFilter get email => StringFieldFilter(
        name: 'email',
        parent: this,
      );

  /// Filter by collectingSince
  StringFieldFilter get collectingSince => StringFieldFilter(
        name: 'collectingSince',
        parent: this,
      );

  /// Filter by figuresCount
  NumericFieldFilter get figuresCount => NumericFieldFilter(
        name: 'figuresCount',
        parent: this,
      );

  /// Filter by secretCount
  NumericFieldFilter get secretCount => NumericFieldFilter(
        name: 'secretCount',
        parent: this,
      );

  /// Filter by totalValue
  NumericFieldFilter get totalValue => NumericFieldFilter(
        name: 'totalValue',
        parent: this,
      );

  /// Filter by avatarUrl
  StringFieldFilter get avatarUrl => StringFieldFilter(
        name: 'avatarUrl',
        parent: this,
      );
}

/// Generated OrderByFieldSelector for `AppUser`
extension AppSchemaAppUserOrderByFieldSelectorExtension
    on OrderByFieldSelector<AppUser> {
  /// Order by document ID (id field)
  OrderByField<String> get id => OrderByField(
        name: 'id',
        parent: this,
        type: FieldPathType.documentId,
      );

  /// Order by username
  OrderByField<String> get username => OrderByField(
        name: 'username',
        parent: this,
      );

  /// Order by email
  OrderByField<String> get email => OrderByField(
        name: 'email',
        parent: this,
      );

  /// Order by collectingSince
  OrderByField<String> get collectingSince => OrderByField(
        name: 'collectingSince',
        parent: this,
      );

  /// Order by figuresCount
  OrderByField<int> get figuresCount => OrderByField(
        name: 'figuresCount',
        parent: this,
      );

  /// Order by secretCount
  OrderByField<int> get secretCount => OrderByField(
        name: 'secretCount',
        parent: this,
      );

  /// Order by totalValue
  OrderByField<double> get totalValue => OrderByField(
        name: 'totalValue',
        parent: this,
      );

  /// Order by avatarUrl
  OrderByField<String?> get avatarUrl => OrderByField(
        name: 'avatarUrl',
        parent: this,
      );
}

/// Generated AggregateFieldSelector for AppUser
extension AppSchemaAppUserAggregateFieldSelectorExtension
    on AggregateFieldSelector<AppUser> {
  /// figuresCount field for aggregation
  AggregateField<int> get figuresCount => AggregateField(
        name: 'figuresCount',
        parent: this,
      );

  /// secretCount field for aggregation
  AggregateField<int> get secretCount => AggregateField(
        name: 'secretCount',
        parent: this,
      );

  /// totalValue field for aggregation
  AggregateField<double> get totalValue => AggregateField(
        name: 'totalValue',
        parent: this,
      );
}

extension AppSchemaAppUserPatchBuilder on PatchBuilder<AppUser> {
  /// Update id field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get id => PatchBuilder(
        name: 'id',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update username field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get username => PatchBuilder(
        name: 'username',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update email field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get email => PatchBuilder(
        name: 'email',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update collectingSince field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get collectingSince => PatchBuilder(
        name: 'collectingSince',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update figuresCount field `int`
  @pragma('vm:prefer-inline')
  NumericFieldUpdate<int> get figuresCount => NumericFieldUpdate(
        name: 'figuresCount',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update secretCount field `int`
  @pragma('vm:prefer-inline')
  NumericFieldUpdate<int> get secretCount => NumericFieldUpdate(
        name: 'secretCount',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update totalValue field `double`
  @pragma('vm:prefer-inline')
  NumericFieldUpdate<double> get totalValue => NumericFieldUpdate(
        name: 'totalValue',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update avatarUrl field `String?`
  @pragma('vm:prefer-inline')
  PatchBuilder<String?> get avatarUrl => PatchBuilder(
        name: 'avatarUrl',
        parent: this,
        converter: NullableConverter(const PrimitiveConverter()),
      );
}

/// Generated FilterSelector for `AppActivity`
extension AppSchemaAppActivityFilterSelectorExtension
    on FilterSelector<AppActivity> {
  /// Filter by document ID (id field)
  @pragma('vm:prefer-inline')
  DocumentIdFieldFilter get id => DocumentIdFieldFilter(
        name: 'id',
        parent: this,
      );

  /// Filter by title
  StringFieldFilter get title => StringFieldFilter(
        name: 'title',
        parent: this,
      );

  /// Filter by description
  StringFieldFilter get description => StringFieldFilter(
        name: 'description',
        parent: this,
      );

  /// Filter by type
  StringFieldFilter get type => StringFieldFilter(
        name: 'type',
        parent: this,
      );

  /// Filter by date
  DateTimeFieldFilter get date => DateTimeFieldFilter(
        name: 'date',
        parent: this,
      );

  /// Filter by icon
  StringFieldFilter get icon => StringFieldFilter(
        name: 'icon',
        parent: this,
      );
}

/// Generated OrderByFieldSelector for `AppActivity`
extension AppSchemaAppActivityOrderByFieldSelectorExtension
    on OrderByFieldSelector<AppActivity> {
  /// Order by document ID (id field)
  OrderByField<String> get id => OrderByField(
        name: 'id',
        parent: this,
        type: FieldPathType.documentId,
      );

  /// Order by title
  OrderByField<String> get title => OrderByField(
        name: 'title',
        parent: this,
      );

  /// Order by description
  OrderByField<String> get description => OrderByField(
        name: 'description',
        parent: this,
      );

  /// Order by type
  OrderByField<String> get type => OrderByField(
        name: 'type',
        parent: this,
      );

  /// Order by date
  OrderByField<DateTime> get date => OrderByField(
        name: 'date',
        parent: this,
      );

  /// Order by icon
  OrderByField<String> get icon => OrderByField(
        name: 'icon',
        parent: this,
      );
}

/// Generated AggregateFieldSelector for AppActivity
extension AppSchemaAppActivityAggregateFieldSelectorExtension
    on AggregateFieldSelector<AppActivity> {}

extension AppSchemaAppActivityPatchBuilder on PatchBuilder<AppActivity> {
  /// Update id field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get id => PatchBuilder(
        name: 'id',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update title field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get title => PatchBuilder(
        name: 'title',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update description field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get description => PatchBuilder(
        name: 'description',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update type field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get type => PatchBuilder(
        name: 'type',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update date field `DateTime`
  @pragma('vm:prefer-inline')
  DateTimeFieldUpdate<DateTime> get date => DateTimeFieldUpdate(
        name: 'date',
        parent: this,
      );

  /// Update icon field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get icon => PatchBuilder(
        name: 'icon',
        parent: this,
        converter: const PrimitiveConverter(),
      );
}

/// Generated FilterSelector for `AppBadge`
extension AppSchemaAppBadgeFilterSelectorExtension on FilterSelector<AppBadge> {
  /// Filter by document ID (id field)
  @pragma('vm:prefer-inline')
  DocumentIdFieldFilter get id => DocumentIdFieldFilter(
        name: 'id',
        parent: this,
      );

  /// Filter by name
  StringFieldFilter get name => StringFieldFilter(
        name: 'name',
        parent: this,
      );

  /// Filter by criteria
  StringFieldFilter get criteria => StringFieldFilter(
        name: 'criteria',
        parent: this,
      );

  /// Filter by iconPath
  StringFieldFilter get iconPath => StringFieldFilter(
        name: 'iconPath',
        parent: this,
      );

  /// Filter by isUnlocked
  BoolFieldFilter get isUnlocked => BoolFieldFilter(
        name: 'isUnlocked',
        parent: this,
      );
}

/// Generated OrderByFieldSelector for `AppBadge`
extension AppSchemaAppBadgeOrderByFieldSelectorExtension
    on OrderByFieldSelector<AppBadge> {
  /// Order by document ID (id field)
  OrderByField<String> get id => OrderByField(
        name: 'id',
        parent: this,
        type: FieldPathType.documentId,
      );

  /// Order by name
  OrderByField<String> get name => OrderByField(
        name: 'name',
        parent: this,
      );

  /// Order by criteria
  OrderByField<String> get criteria => OrderByField(
        name: 'criteria',
        parent: this,
      );

  /// Order by iconPath
  OrderByField<String> get iconPath => OrderByField(
        name: 'iconPath',
        parent: this,
      );

  /// Order by isUnlocked
  OrderByField<bool> get isUnlocked => OrderByField(
        name: 'isUnlocked',
        parent: this,
      );
}

/// Generated AggregateFieldSelector for AppBadge
extension AppSchemaAppBadgeAggregateFieldSelectorExtension
    on AggregateFieldSelector<AppBadge> {}

extension AppSchemaAppBadgePatchBuilder on PatchBuilder<AppBadge> {
  /// Update id field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get id => PatchBuilder(
        name: 'id',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update name field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get name => PatchBuilder(
        name: 'name',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update criteria field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get criteria => PatchBuilder(
        name: 'criteria',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update iconPath field `String`
  @pragma('vm:prefer-inline')
  PatchBuilder<String> get iconPath => PatchBuilder(
        name: 'iconPath',
        parent: this,
        converter: const PrimitiveConverter(),
      );

  /// Update isUnlocked field `bool`
  @pragma('vm:prefer-inline')
  PatchBuilder<bool> get isUnlocked => PatchBuilder(
        name: 'isUnlocked',
        parent: this,
        converter: const PrimitiveConverter(),
      );
}

/// Class to add collections to `FirestoreODM<AppSchema>`
extension AppSchemaODM on FirestoreODM<AppSchema> {
  /// Access characters collection
  @pragma('vm:prefer-inline')
  FirestoreCollection<AppSchema, HironoCharacter, (_$CharactersCollection,)>
      get characters => FirestoreCollection<AppSchema, HironoCharacter,
              (_$CharactersCollection,)>(
            query: firestore.collection('characters'),
            converter: const _$HironoCharacterJsonConverter(),
            documentIdField: 'id',
          );

  /// Access series collection
  @pragma('vm:prefer-inline')
  FirestoreCollection<AppSchema, HironoSeries, (_$SeriesCollection,)>
      get series =>
          FirestoreCollection<AppSchema, HironoSeries, (_$SeriesCollection,)>(
            query: firestore.collection('series'),
            converter: const _$HironoSeriesJsonConverter(),
            documentIdField: 'id',
          );

  /// Access collections collection
  @pragma('vm:prefer-inline')
  FirestoreCollection<AppSchema, AppCollection, (_$CollectionsCollection,)>
      get collections => FirestoreCollection<AppSchema, AppCollection,
              (_$CollectionsCollection,)>(
            query: firestore.collection('collections'),
            converter: const _$AppCollectionJsonConverter(),
            documentIdField: 'id',
          );

  /// Access users collection
  @pragma('vm:prefer-inline')
  FirestoreCollection<AppSchema, AppUser, (_$UsersCollection,)> get users =>
      FirestoreCollection<AppSchema, AppUser, (_$UsersCollection,)>(
        query: firestore.collection('users'),
        converter: const _$AppUserJsonConverter(),
        documentIdField: 'id',
      );
}

/// Extension to add collections to `TransactionContext<AppSchema>`
extension $AppSchemaTransactionContext on TransactionContext<AppSchema> {
  /// Access characters collection
  @pragma('vm:prefer-inline')
  TransactionCollection<AppSchema, HironoCharacter, (_$CharactersCollection,)>
      get characters => TransactionCollection<AppSchema, HironoCharacter,
              (_$CharactersCollection,)>(
            query: ref.collection('characters'),
            context: this,
            converter: const _$HironoCharacterJsonConverter(),
            documentIdField: 'id',
          );

  /// Access series collection
  @pragma('vm:prefer-inline')
  TransactionCollection<AppSchema, HironoSeries, (_$SeriesCollection,)>
      get series =>
          TransactionCollection<AppSchema, HironoSeries, (_$SeriesCollection,)>(
            query: ref.collection('series'),
            context: this,
            converter: const _$HironoSeriesJsonConverter(),
            documentIdField: 'id',
          );

  /// Access collections collection
  @pragma('vm:prefer-inline')
  TransactionCollection<AppSchema, AppCollection, (_$CollectionsCollection,)>
      get collections => TransactionCollection<AppSchema, AppCollection,
              (_$CollectionsCollection,)>(
            query: ref.collection('collections'),
            context: this,
            converter: const _$AppCollectionJsonConverter(),
            documentIdField: 'id',
          );

  /// Access users collection
  @pragma('vm:prefer-inline')
  TransactionCollection<AppSchema, AppUser, (_$UsersCollection,)> get users =>
      TransactionCollection<AppSchema, AppUser, (_$UsersCollection,)>(
        query: ref.collection('users'),
        context: this,
        converter: const _$AppUserJsonConverter(),
        documentIdField: 'id',
      );
}

/// Transaction document class for users collection
extension $AppSchemaUsersTransactionDocument
    on TransactionDocument<AppSchema, AppUser, (_$UsersCollection,)> {
  /// Access activities subcollection
  @pragma('vm:prefer-inline')
  TransactionCollection<AppSchema, AppActivity,
          (_$UsersCollection, _$ActivitiesCollection)>
      get activities => TransactionCollection<AppSchema, AppActivity,
              (_$UsersCollection, _$ActivitiesCollection)>(
            query: ref.collection('activities'),
            context: context,
            converter: const _$AppActivityJsonConverter(),
            documentIdField: 'id',
          );

  /// Access badges subcollection
  @pragma('vm:prefer-inline')
  TransactionCollection<AppSchema, AppBadge,
          (_$UsersCollection, _$BadgesCollection)>
      get badges => TransactionCollection<AppSchema, AppBadge,
              (_$UsersCollection, _$BadgesCollection)>(
            query: ref.collection('badges'),
            context: context,
            converter: const _$AppBadgeJsonConverter(),
            documentIdField: 'id',
          );
}

/// Document class for users collection
extension $AppSchemaUsersDocument
    on FirestoreDocument<AppSchema, AppUser, (_$UsersCollection,)> {
  /// Access activities subcollection
  FirestoreCollection<AppSchema, AppActivity,
          (_$UsersCollection, _$ActivitiesCollection)>
      get activities => FirestoreCollection<AppSchema, AppActivity,
              (_$UsersCollection, _$ActivitiesCollection)>(
            query: ref.collection('activities'),
            converter: const _$AppActivityJsonConverter(),
            documentIdField: 'id',
          );

  /// Access badges subcollection
  FirestoreCollection<AppSchema, AppBadge,
          (_$UsersCollection, _$BadgesCollection)>
      get badges => FirestoreCollection<AppSchema, AppBadge,
              (_$UsersCollection, _$BadgesCollection)>(
            query: ref.collection('badges'),
            converter: const _$AppBadgeJsonConverter(),
            documentIdField: 'id',
          );
}

/// Extension to add collections to BatchContext<AppSchema>
extension AppSchemaBatchContextExtensions on BatchContext<AppSchema> {
  /// Access characters collection
  BatchCollection<AppSchema, HironoCharacter, (_$CharactersCollection,)>
      get characters => BatchCollection(
            collection: firestoreInstance.collection('characters'),
            converter: const _$HironoCharacterJsonConverter(),
            documentIdField: 'id',
            context: this,
          );

  /// Access series collection
  BatchCollection<AppSchema, HironoSeries, (_$SeriesCollection,)> get series =>
      BatchCollection(
        collection: firestoreInstance.collection('series'),
        converter: const _$HironoSeriesJsonConverter(),
        documentIdField: 'id',
        context: this,
      );

  /// Access collections collection
  BatchCollection<AppSchema, AppCollection, (_$CollectionsCollection,)>
      get collections => BatchCollection(
            collection: firestoreInstance.collection('collections'),
            converter: const _$AppCollectionJsonConverter(),
            documentIdField: 'id',
            context: this,
          );

  /// Access users collection
  BatchCollection<AppSchema, AppUser, (_$UsersCollection,)> get users =>
      BatchCollection(
        collection: firestoreInstance.collection('users'),
        converter: const _$AppUserJsonConverter(),
        documentIdField: 'id',
        context: this,
      );
}

/// Batch document class for users collection
extension $AppSchemaUsersBatchDocument
    on BatchDocument<AppSchema, AppUser, (_$UsersCollection,)> {
  /// Access activities subcollection
  @pragma('vm:prefer-inline')
  BatchCollection<AppSchema, AppActivity,
          (_$UsersCollection, _$ActivitiesCollection)>
      get activities => getBatchCollection(
            parent: this,
            name: 'activities',
            converter: const _$AppActivityJsonConverter(),
            documentIdField: 'id',
          );

  /// Access badges subcollection
  @pragma('vm:prefer-inline')
  BatchCollection<AppSchema, AppBadge, (_$UsersCollection, _$BadgesCollection)>
      get badges => getBatchCollection(
            parent: this,
            name: 'badges',
            converter: const _$AppBadgeJsonConverter(),
            documentIdField: 'id',
          );
}

//Generated converter for `HironoCharacter`
class _$HironoCharacterJsonConverter
    implements FirestoreConverter<HironoCharacter, Map<String, dynamic>> {
  const _$HironoCharacterJsonConverter();

  @override
  HironoCharacter fromJson(Map<String, dynamic> data) =>
      HironoCharacter.fromJson(data);

  @override
  Map<String, dynamic> toJson(HironoCharacter value) => value.toJson();
}

//Generated converter for `HironoSeries`
class _$HironoSeriesJsonConverter
    implements FirestoreConverter<HironoSeries, Map<String, dynamic>> {
  const _$HironoSeriesJsonConverter();

  @override
  HironoSeries fromJson(Map<String, dynamic> data) =>
      HironoSeries.fromJson(data);

  @override
  Map<String, dynamic> toJson(HironoSeries value) => value.toJson();
}

//Generated converter for `AppCollection`
class _$AppCollectionJsonConverter
    implements FirestoreConverter<AppCollection, Map<String, dynamic>> {
  const _$AppCollectionJsonConverter();

  @override
  AppCollection fromJson(Map<String, dynamic> data) =>
      AppCollection.fromJson(data);

  @override
  Map<String, dynamic> toJson(AppCollection value) => value.toJson();
}

//Generated converter for `AppUser`
class _$AppUserJsonConverter
    implements FirestoreConverter<AppUser, Map<String, dynamic>> {
  const _$AppUserJsonConverter();

  @override
  AppUser fromJson(Map<String, dynamic> data) => AppUser.fromJson(data);

  @override
  Map<String, dynamic> toJson(AppUser value) => value.toJson();
}

//Generated converter for `AppActivity`
class _$AppActivityJsonConverter
    implements FirestoreConverter<AppActivity, Map<String, dynamic>> {
  const _$AppActivityJsonConverter();

  @override
  AppActivity fromJson(Map<String, dynamic> data) => AppActivity.fromJson(data);

  @override
  Map<String, dynamic> toJson(AppActivity value) => value.toJson();
}

//Generated converter for `AppBadge`
class _$AppBadgeJsonConverter
    implements FirestoreConverter<AppBadge, Map<String, dynamic>> {
  const _$AppBadgeJsonConverter();

  @override
  AppBadge fromJson(Map<String, dynamic> data) => AppBadge.fromJson(data);

  @override
  Map<String, dynamic> toJson(AppBadge value) => value.toJson();
}
