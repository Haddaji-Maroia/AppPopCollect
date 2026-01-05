import 'package:firestore_odm/firestore_odm.dart';
import 'models/collection.dart';
import 'models/hirono_character.dart';
import 'models/hirono_series.dart';
import 'models/user_dto.dart';
import 'models/activity.dart';
import 'models/badge.dart';

part 'schema.odm.dart';

@Schema()
@Collection<HironoCharacter>('characters')
@Collection<HironoSeries>('series')
@Collection<AppCollection>('collections')
@Collection<AppUser>('users')
@Collection<AppActivity>('users/*/activities')
@Collection<AppBadge>('users/*/badges')
final appSchema = _$AppSchema;

