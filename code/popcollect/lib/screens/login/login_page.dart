import 'package:flutter/material.dart';
import 'package:popcollect2/screens/home_page.dart';
import 'package:popcollect2/screens/register/sign_up_page.dart';
import 'package:popcollect2/widgets/auth/auth_header.dart';
import 'package:popcollect2/widgets/auth/or_divider.dart';
import 'package:popcollect2/widgets/form/password_input.dart';

import '../../widgets/auth/social_login.dart';
import '../../widgets/form/email_input.dart';


class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  static const String routeName = '/login';

  final GlobalKey<FormState> _loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Header fix
                AuthHeader(title: 'hh'),
                //Form
                SingleChildScrollView(
                      child: Form(
                          key: _loginFormKey,
                          child: Column(
                            children: [
                              EmailInput(),
                              SizedBox(height: 20.0),
                              PasswordInput(),
                              SizedBox(height: 40.0),

                              SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: ElevatedButton(
                                  onPressed: () {
                                      Navigator.pushNamed(context, HomePage.routeName);

                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF587DBD),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: const Text(
                                    'Login',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),

                              OrDivider(),

                              SizedBox(
                                width: double.infinity,
                                height: 56,
                                child: ElevatedButton(
                                  onPressed: () {
                                    if (_loginFormKey.currentState?.validate() ?? false) {
                                      Navigator.pushNamed(context, SignUpPage.routeName);
                                    }
                                  },
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: const Color(0xFF587DBD),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                  ),
                                  child: const Text(
                                    'Sign up',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                    ),


                SizedBox(height: 20.0),
                SocialLogin(),

              ],
            ),
        ),
      ),
    );
  }
}


