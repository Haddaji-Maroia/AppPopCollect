import 'package:flutter/material.dart';
import 'package:dto/dto.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/durations.dart';
import '../../services/notification_service.dart';
import '../../widgets/onboarding/onboarding_elements.dart';
import '../../widgets/onboarding/step_welcome.dart';
import '../../widgets/onboarding/step_setup.dart';
import '../../widgets/onboarding/step_success.dart';
import '../login/login_page.dart';
import '../register/sign_up_page.dart';

class OnboardingPage extends StatefulWidget {
  static const routeName = '/onboarding';
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  final TextEditingController _nameController = TextEditingController();
  final db = FirestoreODM(appSchema);

  int _currentPage = 0;
  final List<String> _selectedSeries = [];

  @override
  void dispose() {
    _pageController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  void _nextPage() => _pageController.nextPage(duration: AppDurations.medium, curve: Curves.easeOut);

  void _goToLogin() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_done', true);
    if (mounted) Navigator.pushReplacementNamed(context, LoginPage.routeName);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (i) => OnboardingDot(isActive: _currentPage == i)),
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) => setState(() => _currentPage = page),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          StepWelcome(onNext: _nextPage, onSkip: _goToLogin),
          StreamBuilder<List<AppCollection>>(
            stream: db.collections.stream,
            builder: (context, snapshot) {
              return StepSetup(
                nameController: _nameController,
                selectedSeries: _selectedSeries,
                collections: snapshot.data ?? [],
                onToggleSeries: (name) => setState(() {
                  _selectedSeries.contains(name) ? _selectedSeries.remove(name) : _selectedSeries.add(name);
                }),
                onNext: _nextPage,
                onSkip: _goToLogin,
              );
            },
          ),
          StepSuccess(
            userName: _nameController.text,
            onFinish: () async {
              final prefs = await SharedPreferences.getInstance();
              await prefs.setBool('onboarding_done', true);
              await prefs.setString('userName', _nameController.text.trim());
              try {
                await NotificationService.showInstantNotification("Welcome!", "Registration successful.");
              } catch (_) {}
              if (mounted) {
                Navigator.pushReplacementNamed(context, SignUpPage.routeName, arguments: _nameController.text);
              }
            },
          ),
        ],
      ),
    );
  }
}