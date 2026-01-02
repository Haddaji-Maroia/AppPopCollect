import 'package:firestore_odm/firestore_odm.dart';
import 'models/hirono_character.dart';

part 'schema.odm.dart';

@Schema()
@Collection<HironoCharacter>('characters')
final appSchema = _$AppSchema;