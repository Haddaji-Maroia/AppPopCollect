import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:popcollect2/screens/login/login_page.dart';
import 'package:popcollect2/widgets/auth/auth_header.dart';
import 'package:popcollect2/widgets/auth/or_divider.dart';
import 'package:popcollect2/widgets/auth/social_login.dart';
import 'package:popcollect2/widgets/form/username_input.dart';

import '../../services/auth_service.dart';
import '../../widgets/form/email_input.dart';
import '../../widgets/form/password_input.dart';
import '../home_page.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});
  static const String routeName = '/register';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _registerFormKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthHeader(title: 'Sign up'),

              SingleChildScrollView(
                child: Form(
                  key: _registerFormKey,
                  child: Column(
                    children: [
                      UserNameInput(),
                      const SizedBox(height: 20),
                      EmailInput(controller: emailController),
                      const SizedBox(height: 20),
                      PasswordInput(controller: passwordController),
                      const SizedBox(height: 40),

                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF587DBD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () async {
                            if (_registerFormKey.currentState!.validate()) {
                              try {
                                await authServices.value.createAccount(
                                  email: emailController.text.trim(),
                                  password: passwordController.text.trim(),
                                );

                                if (!mounted) return;
                                Navigator.pushReplacementNamed(
                                  context,
                                  HomePage.routeName,
                                );
                              } on FirebaseAuthException catch (e) {
                                String message;
                                if (e.code == 'email-already-in-use') {
                                  message = 'Email already in use';
                                } else if (e.code == 'weak-password') {
                                  message = 'Password too weak';
                                } else {
                                  message = 'Registration failed';
                                }

                                if (!mounted) return;
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(content: Text(message)),
                                );
                              }
                            }
                          },
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

                      const OrDivider(),

                      SizedBox(
                        width: double.infinity,
                        height: 56,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF587DBD),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                          ),
                          onPressed: () {
                            Navigator.pushNamed(
                              context,
                              LoginPage.routeName,
                            );
                          },
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
                  ),
                ),
              ),

              const SizedBox(height: 20),
              const SocialLogin(),
            ],
          ),
        ),
      ),
    );
  }
}



