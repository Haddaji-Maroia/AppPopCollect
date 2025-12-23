import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:popcollect2/screens/home_page.dart';
import 'package:popcollect2/screens/register/sign_up_page.dart';
import 'package:popcollect2/services/auth_service.dart';
import 'package:popcollect2/widgets/auth/auth_header.dart';
import 'package:popcollect2/widgets/auth/or_divider.dart';
import 'package:popcollect2/widgets/form/password_input.dart';

import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import '../../widgets/auth/social_login.dart';
import '../../widgets/form/email_input.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  static const String routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _loginFormKey = GlobalKey<FormState>();

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (!_loginFormKey.currentState!.validate()) return;

    try {
      await authServices.value.signIn(
        email: emailController.text.trim(),
        password: passwordController.text.trim(),
      );

      if (!mounted) return;

      Navigator.pushReplacementNamed(
        context,
        HomePage.routeName,
      );
    } on FirebaseAuthException catch (e) {
      if (!mounted) return;

      String message;
      switch (e.code) {
        case 'user-not-found':
          message = 'No user found for this email';
          break;
        case 'wrong-password':
          message = 'Wrong password';
          break;
        default:
          message = 'Login error';
      }

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(message)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(kHorizontalPadding),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AuthHeader(title: 'Login'),

              SingleChildScrollView(
                child: Form(
                  key: _loginFormKey,
                  child: Column(
                    children: [
                      EmailInput(controller: emailController),
                      const SizedBox(height: kSpacingM),
                      PasswordInput(controller: passwordController),
                      const SizedBox(height: kSpacingXL),


                      SizedBox(
                        width: double.infinity,
                        height: kButtonHeight,
                        child: ElevatedButton(
                          onPressed: _handleLogin,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF587DBD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(kBorderRadiusButton),
                            ),
                          ),
                          child: const Text(
                            'Login',
                            style: kButtonText,
                          ),
                        ),
                      ),

                      const OrDivider(),

                      SizedBox(
                        width: double.infinity,
                        height: kButtonHeight,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushNamed(context, SignUpPage.routeName);
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF587DBD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(kBorderRadiusButton),
                            ),
                          ),
                          child: const Text(
                            'Sign up',
                            style: kButtonText,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: kSpacingM),
              const SocialLogin(),
            ],
          ),
        ),
      ),
    );
  }
}
