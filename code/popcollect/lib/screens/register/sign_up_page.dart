import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../services/auth_service.dart';
import '../../widgets/auth/auth_header.dart';
import '../../widgets/auth/social_login.dart';
import '../../widgets/auth/signup_form.dart';
import '../../widgets/auth/auth_action_buttons.dart';
import '../home_page.dart';
import '../login/login_page.dart';
import '../onboarding/onboarding_page.dart';

class SignUpPage extends StatefulWidget {
  static const String routeName = '/register';
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passController = TextEditingController();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    final args = ModalRoute.of(context)?.settings.arguments;
    if (args is String && _nameController.text.isEmpty) {
      _nameController.text = args;
    }
  }

  Future<void> _doRegister() async {
    if (_formKey.currentState!.validate()) {
      try {
        await authServices.value.createAccount(
          email: _emailController.text.trim(),
          password: _passController.text.trim(),
        );
        if (mounted) Navigator.pushReplacementNamed(context, HomePage.routeName);
      } on FirebaseAuthException catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.message ?? 'Error')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kPagePadding),
          child: Column(
            children: [
              const AuthHeader(title: 'Sign up'),
              const SizedBox(height: kSpacingL),
              SignupForm(
                formKey: _formKey,
                nameController: _nameController,
                emailController: _emailController,
                passwordController: _passController,
              ),
              const SizedBox(height: kSpacingL),
              AuthActionButtons(
                onSignUp: _doRegister,
                onLogin: () => Navigator.pushNamed(context, LoginPage.routeName),
                onTutorial: () => Navigator.pushNamed(context, OnboardingPage.routeName),
              ),
              const SocialLogin(),
            ],
          ),
        ),
      ),
    );
  }
}