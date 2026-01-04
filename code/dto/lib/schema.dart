import 'package:firestore_odm/firestore_odm.dart';
import 'models/hirono_character.dart';
import 'models/hirono_series.dart';

part 'schema.odm.dart';

@Schema()
@Collection<HironoCharacter>('characters')
@Collection<HironoSeries>('series')
final appSchema = _$AppSchema;