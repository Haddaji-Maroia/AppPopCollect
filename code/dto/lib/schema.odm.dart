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
