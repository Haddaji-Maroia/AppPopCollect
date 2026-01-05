import 'package:flutter/material.dart';
import '../../constants/sizes.dart';
import '../login/login_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnboardingPage extends StatefulWidget {
  static const routeName = '/onboarding';
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final PageController _pageController = PageController();
  final TextEditingController _nameController = TextEditingController();

  int _currentPage = 0;
  final List<String> _selectedSeries = [];

  final List<Map<String, String>> _availableSeries = [
    {'name': 'Hirono', 'icon': '👨‍✈️'},
    {'name': 'SKULLPANDA', 'icon': '💀'},
    {'name': 'DIMOO', 'icon': '🦖'},
    {'name': 'MOLLY', 'icon': '👱‍♀️'},
    {'name': 'KUBO', 'icon': '🧊'},
    {'name': 'AZURA', 'icon': '🧚‍♀️'},
    {'name': 'PUCKY', 'icon': '🦄'},
    {'name': 'LABUBU', 'icon': '👹'},
  ];


  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_done', true);
    await prefs.setString('userName', _nameController.text);

    print("Name saved: ${_nameController.text}");
  }

  void _nextPage() {
    _pageController.nextPage(
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  // Funzione per saltare direttamente al Login
  void _skipToLogin() async {
    await _completeOnboarding();
    if (mounted) {
      Navigator.pushReplacementNamed(context, LoginPage.routeName);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(3, (index) => _buildDot(index)),
        ),
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) => setState(() => _currentPage = page),
        physics: const NeverScrollableScrollPhysics(),
        children: [
          _stepWelcome(),
          _stepSetup(),
          _stepSuccess(),
        ],
      ),
    );
  }

  // --- STEP 1: WELCOME ---
  Widget _stepWelcome() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('🎭', style: TextStyle(fontSize: 80)),
          const SizedBox(height: 40),
          const Text('Pop Mart Tracker', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900, color: Color(0xFF1A1A1A))),
          const SizedBox(height: 12),
          const Text('Organize your collection in one place.', textAlign: TextAlign.center, style: TextStyle(fontSize: 16, color: Colors.grey)),
          const SizedBox(height: 60),
          _btnSemplice(text: 'Get Started', onPressed: _nextPage),
          const SizedBox(height: 16),
          // TASTO SKIP
          TextButton(
            onPressed: _skipToLogin,
            child: const Text('Skip to Login', style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
          ),
        ],
      ),
    );
  }

  // --- STEP 2: SETUP ---
  Widget _stepSetup() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 20),
          const Text("Let's start!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          const Text("Your Name", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey)),
          const SizedBox(height: 8),
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: 'Enter name',
              filled: true,
              fillColor: const Color(0xFFF9FAFB),
              border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
            ),
            onChanged: (val) => setState(() {}),
          ),
          const SizedBox(height: 30),
          const Text("What do you collect?", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey)),
          const SizedBox(height: 16),
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 12, crossAxisSpacing: 12),
            itemCount: _availableSeries.length,
            itemBuilder: (context, index) {
              final item = _availableSeries[index];
              final isSel = _selectedSeries.contains(item['name']);
              return GestureDetector(
                onTap: () => setState(() => isSel ? _selectedSeries.remove(item['name']) : _selectedSeries.add(item['name']!)),
                child: Container(
                  decoration: BoxDecoration(
                    color: isSel ? const Color(0xFF6366F1) : const Color(0xFFF9FAFB),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(item['icon']!, style: const TextStyle(fontSize: 20)),
                      Text(item['name']!, style: TextStyle(fontSize: 9, color: isSel ? Colors.white : Colors.black, fontWeight: isSel ? FontWeight.bold : FontWeight.normal)),
                    ],
                  ),
                ),
              );
            },
          ),
          const SizedBox(height: 40),
          _btnSemplice(
            text: 'Continue',
            onPressed: _nameController.text.isNotEmpty ? _nextPage : () {},
            isActive: _nameController.text.isNotEmpty,
          ),
          const SizedBox(height: 16),
          Center(
            child: TextButton(
              onPressed: _skipToLogin,
              child: const Text('I already have an account', style: TextStyle(color: Colors.grey, fontSize: 13)),
            ),
          ),
        ],
      ),
    );
  }

  // --- STEP 3: SUCCESS ---
  Widget _stepSuccess() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('✨', style: TextStyle(fontSize: 60)),
          const SizedBox(height: 20),
          Text("Ready, ${_nameController.text}!", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          const Text("Your personal tracker is set up.", style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 60),
          _btnSemplice(
            text: 'Create My Account 🚀',
            onPressed: () async {
              await _completeOnboarding();
              if (mounted) {
                Navigator.pushReplacementNamed(
                  context,
                  '/signup',
                  arguments: _nameController.text,
                );
              }
            },
          ),
        ],
      ),
    );
  }

  // UI
  Widget _buildDot(int index) {
    return Container(
      height: 6,
      width: _currentPage == index ? 20 : 6,
      margin: const EdgeInsets.symmetric(horizontal: 3),
      decoration: BoxDecoration(
        color: _currentPage == index ? const Color(0xFF6366F1) : const Color(0xFFE5E7EB),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }

  Widget _btnSemplice({required String text, required VoidCallback onPressed, bool isActive = true}) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: isActive ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? const Color(0xFF587DBD) : Colors.grey.shade300,
          foregroundColor: Colors.white,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(kRadiusL),
          ),
        ),
        child: Text(
            text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )
        ),
      ),
    );
  }
}