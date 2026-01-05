import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:shared_preferences/shared_preferences.dart';


class DatabaseSetup {
  static Future<void> pushInitialUser() async {
    const userId = 'test_user_123';
    final collection = FirebaseFirestore.instance.collection('users');

    final prefs = await SharedPreferences.getInstance();
    final String savedName = prefs.getString('userName') ?? 'Collector King';


    final charactersQuery = await FirebaseFirestore.instance
        .collection('characters')
        .where('isOwned', isEqualTo: true)
        .get();

    final int realCount = charactersQuery.docs.length;

    final userData = {
      'id': userId,
      'username': savedName,
      'email': 'collector@example.com',
      'collectingSince': 'Oct 2023',
      'figuresCount': realCount,
      'secretCount': 3,
      'totalValue': 375.0,
      'avatarUrl': 'assets/images/avatar/avatar.jpeg',
    };

    await collection.doc(userId).set(userData);
    print("User Data synced! Name: $savedName, Figures: $realCount");
  }

  static Future<void> pushInitialActivities() async {
    final collection = FirebaseFirestore.instance.collection('global_activities');

    final activities = [
      {
        'id': 'act1',
        'title': 'Welcome aboard!',
        'description': 'System initialized.',
        'type': 'system',
        'date': Timestamp.now(),
      },
      {
        'id': 'act2',
        'title': 'Global Update',
        'description': 'Database synced for all users.',
        'type': 'added',
        'date': Timestamp.now(),
      },
      {
        'id': 'act3',
        'title': 'Secret figure found!',
        'description': 'Witch Cat – City of Mercy',
        'type': 'secret',
        'date': Timestamp.now(),
      },
    ];

    for (var act in activities) {
      await collection.doc(act['id'] as String).set(act);
    }
    print("Global Activities synced!");
  }

  static Future<void> pushInitialBadges() async {
    final collection = FirebaseFirestore.instance.collection('global_badges');

    final badges = [
      {
        'id': 'newbie',
        'name': 'Starter Badge',
        'criteria': 'First sync complete',
        'isUnlocked': true,
      },
      {
        'id': 'hunter',
        'name': 'Secret Hunter',
        'criteria': 'Found a secret figure',
        'isUnlocked': true,
      },
      {
        'id': 'pro',
        'name': 'Series Master',
        'criteria': 'Complete a full series',
        'isUnlocked': false,
      },
      {
        'id': 'loyal',
        'name': 'Daily Collector',
        'criteria': 'Open app for 7 days',
        'isUnlocked': false,
      },
      {
        'id': 'top_fan',
        'name': 'Top Fan',
        'criteria': 'Have 50+ figures',
        'isUnlocked': false,
      },
    ];

    for (var b in badges) {
      await collection.doc(b['id'] as String).set(b);
    }
    print("Global Badges synced!");
  }

  static Future<void> setupFullDatabase() async {
    await pushInitialActivities();
    await pushInitialBadges();
    await pushInitialUser();
    print("Database completed!");
  }
}