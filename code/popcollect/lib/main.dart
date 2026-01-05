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
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  // Recuperiamo le preferenze e controlliamo se l'onboarding è completato
  final prefs = await SharedPreferences.getInstance();
  final bool isFinished = prefs.getBool('onboarding_done') ?? false;

  runApp(MyApp(isFinished: isFinished));
}

class MyApp extends StatelessWidget {
  final bool isFinished;

  const MyApp({
    super.key,
    required this.isFinished,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // CORREZIONE: Usa 'isFinished' che è il nome della variabile nella classe
      home: !isFinished
          ? const OnboardingPage()
          : StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Scaffold(
              body: Center(child: CircularProgressIndicator()),
            );
          }
          if (snapshot.hasData && snapshot.data != null) {
            return const HomePage();
          }
          return const LoginPage();
        },
      ),
      routes: {
        LoginPage.routeName: (_) => const LoginPage(),
        OnboardingPage.routeName: (_) => const OnboardingPage(),
        '/register': (_) => const SignUpPage(),
        '/signup': (_) => const SignUpPage(),
        HomePage.routeName: (_) => const HomePage(),
        CollectionPage.routeName: (_) => const CollectionPage(),
        ProfilePage.routeName: (_) => const ProfilePage(),
        WishlistPage.routeName: (_) => const WishlistPage(),
      },
      title: 'AppPopCollect',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
    );
  }
}