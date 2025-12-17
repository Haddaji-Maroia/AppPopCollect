import 'package:flutter/material.dart';
import 'package:popcollect2/screens/login/login_page.dart';
import 'package:popcollect2/widgets/auth/auth_header.dart';
import 'package:popcollect2/widgets/auth/or_divider.dart';
import 'package:popcollect2/widgets/auth/social_login.dart';
import 'package:popcollect2/widgets/form/username_input.dart';

import '../../widgets/form/email_input.dart';
import '../../widgets/form/password_input.dart';
import '../home_page.dart';


class SignUpPage extends StatelessWidget {
  SignUpPage({super.key});

  static const String routeName = '/register';

  final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Header fix
              AuthHeader(title: 'Sign up'),

              // Form
              SingleChildScrollView(
                child: Form(
                    key: _registerFormKey,
                    child: Column(
                      children: [
                        UserNameInput(),
                        SizedBox(height: 20.0),
                        EmailInput(),
                        SizedBox(height: 20.0),
                        PasswordInput(),
                        SizedBox(height: 40.0),
                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {
                              if (_registerFormKey.currentState?.validate() ?? false) {
                                Navigator.pushNamed(context, HomePage.routeName);
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

                        OrDivider(),

                        SizedBox(
                          width: double.infinity,
                          height: 56,
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.pushNamed(context, LoginPage.routeName);
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


