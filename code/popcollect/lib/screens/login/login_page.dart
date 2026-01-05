import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../../services/auth_service.dart';
import '../../widgets/auth/auth_header.dart';
import '../../widgets/auth/social_login.dart';
import '../../widgets/auth/login_form.dart';
import '../../widgets/auth/auth_footer.dart';
import '../home_page.dart';
import '../register/sign_up_page.dart';
import '../onboarding/onboarding_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});
  static const String routeName = '/login';

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _handleLogin() async {
    if (!_formKey.currentState!.validate()) return;
    try {
      await authServices.value.signIn(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim(),
      );
      if (mounted) Navigator.pushReplacementNamed(context, HomePage.routeName);
    } on FirebaseAuthException catch (e) {
      _showError(e.code);
    }
  }

  void _showError(String code) {
    if (!mounted) return;
    final msg = code == 'user-not-found' ? 'User not found' : 'Login error';
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(kPagePadding),
          child: Column(
            children: [
              const AuthHeader(title: 'Login'),
              const SizedBox(height: kSpacingXL),

              // form
              LoginForm(
                formKey: _formKey,
                emailController: _emailController,
                passwordController: _passwordController,
                onLoginPressed: _handleLogin,
              ),

              AuthFooter(
                onSignUp: () => Navigator.pushNamed(context, SignUpPage.routeName),
                onTutorial: () => Navigator.pushNamed(context, OnboardingPage.routeName),
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