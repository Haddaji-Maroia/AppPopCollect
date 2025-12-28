import 'package:dto/dto.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:popcollect2/firebase_options.dart';
import 'package:popcollect2/routes/app_routes.dart';
import 'package:popcollect2/screens/collection/collection_page.dart';
import 'package:popcollect2/screens/home_page.dart';
import 'package:popcollect2/screens/login/login_page.dart';
import 'package:popcollect2/screens/profile_page.dart';
import 'package:popcollect2/screens/wishlist_page.dart';


void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginPage.routeName,
      routes: {
        LoginPage.routeName: (_) => const LoginPage(),
        HomePage.routeName: (_) => HomePage(),
        CollectionPage.routeName: (_) => const CollectionPage(),
        ProfilePage.routeName: (_) => const ProfilePage(),
        WishlistPage.routeName: (_) => const WishlistPage(),
      },
      title: 'AppPopCollect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
      ),
    );
  }
}






