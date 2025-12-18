import 'package:flutter/material.dart';
import 'package:popcollect2/screens/home_page.dart';

import '../screens/characters_page.dart';
import '../screens/login/login_page.dart';
import '../screens/register/sign_up_page.dart';

final Map<String, WidgetBuilder> routes = {
  LoginPage.routeName: (context) => LoginPage(),
  SignUpPage.routeName: (context) => SignUpPage(),
  HomePage.routeName: (context) => HomePage(),
  CharactersPage.routeName: (context) => const CharactersPage(),
};
