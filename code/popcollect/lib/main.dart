import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:popcollect2/firebase_options.dart';
import 'package:popcollect2/screens/collection/collection_page.dart';
import 'package:popcollect2/screens/home_page.dart';
import 'package:popcollect2/screens/login/login_page.dart';
import 'package:popcollect2/screens/onboarding/onboarding_page.dart';
import 'package:popcollect2/screens/profile_page.dart';
import 'package:popcollect2/screens/register/sign_up_page.dart';
import 'package:popcollect2/screens/wishlist_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(body: Center(child: CircularProgressIndicator()));
          }

          if (snapshot.hasData && snapshot.data != null) {
            return const HomePage();
          }

          return const LoginPage();
        },
      ),

      routes: {
        LoginPage.routeName: (_) => const LoginPage(),
        // AGGIUNTE E CORRETTE QUI SOTTO:
        OnboardingPage.routeName: (_) => const OnboardingPage(),
        '/register': (_) => const SignUpPage(), // Cambiato da /signup a /register per far felice il tuo errore
        '/signup': (_) => const SignUpPage(),   // Lasciamo anche questo per sicurezza

        HomePage.routeName: (_) => const HomePage(),
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