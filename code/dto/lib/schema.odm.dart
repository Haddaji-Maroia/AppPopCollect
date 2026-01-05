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
