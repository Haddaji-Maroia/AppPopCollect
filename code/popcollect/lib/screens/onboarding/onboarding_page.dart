import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../constants/sizes.dart';
import '../login/login_page.dart';

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

  // --- LOGICA ---

  Future<void> _completeOnboarding() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('onboarding_done', true);
    await prefs.setString('userName', _nameController.text);
  }

  void _nextPage() => _pageController.nextPage(
    duration: const Duration(milliseconds: 300),
    curve: Curves.easeOut,
  );

  void _skipToLogin() async {
    await _completeOnboarding();
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
          children: List.generate(3, (index) => _buildDot(index)),
        ),
        centerTitle: true,
      ),
      body: PageView(
        controller: _pageController,
        onPageChanged: (page) => setState(() => _currentPage = page),
        physics: const NeverScrollableScrollPhysics(),
        children: [_stepWelcome(), _stepSetup(), _stepSuccess()],
      ),
    );
  }

  // --- STEPS ---

  Widget _stepWelcome() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('🎭', style: TextStyle(fontSize: 80)),
          const SizedBox(height: 40),
          const Text('Pop Mart Tracker', style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900)),
          const SizedBox(height: 12),
          const Text('Organize your collection in one place.', textAlign: TextAlign.center, style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 60),
          _btnSemplice(text: 'Get Started', onPressed: _nextPage),
          TextButton(onPressed: _skipToLogin, child: const Text('Skip to Login', style: TextStyle(color: Colors.grey))),
        ],
      ),
    );
  }

  Widget _stepSetup() {
    // Il bottone è attivo solo se c'è un nome E almeno una serie scelta
    bool canContinue = _nameController.text.isNotEmpty && _selectedSeries.isNotEmpty;

    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Let's start!", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 30),
          _buildLabel("Your Name"),
          TextField(
            controller: _nameController,
            decoration: _inputStyle('Enter name'),
            onChanged: (_) => setState(() {}),
          ),
          const SizedBox(height: 30),
          _buildLabel("What do you collect?"),
          const SizedBox(height: 16),
          _buildFirestoreGrid(),
          const SizedBox(height: 40),
          _btnSemplice(
            text: 'Continue',
            isActive: canContinue,
            onPressed: canContinue ? _nextPage : () {},
          ),
          Center(child: TextButton(onPressed: _skipToLogin, child: const Text('I already have an account', style: TextStyle(color: Colors.grey)))),
        ],
      ),
    );
  }

  Widget _stepSuccess() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('✨', style: TextStyle(fontSize: 60)),
          const SizedBox(height: 20),
          Text("Ready, ${_nameController.text}!", style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const Text("Your personal tracker is set up.", style: TextStyle(color: Colors.grey)),
          const SizedBox(height: 60),
          _btnSemplice(
            text: 'Create My Account 🚀',
            onPressed: () async {
              await _completeOnboarding();
              if (mounted) Navigator.pushReplacementNamed(context, '/signup', arguments: _nameController.text);
            },
          ),
        ],
      ),
    );
  }

  // --- REUSABLE COMPONENTS ---

  Widget _buildFirestoreGrid() {
    return StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
      stream: FirebaseFirestore.instance.collection('collections').snapshots(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());
        final docs = snapshot.data!.docs;

        return GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4, mainAxisSpacing: 12, crossAxisSpacing: 12),
          itemCount: docs.length,
          itemBuilder: (context, index) {
            final data = docs[index].data();
            final name = data['name'] ?? '';
            final isSel = _selectedSeries.contains(name);

            return GestureDetector(
              onTap: () => setState(() => isSel ? _selectedSeries.remove(name) : _selectedSeries.add(name)),
              child: AnimatedContainer(
                duration: const Duration(milliseconds: 200),
                decoration: BoxDecoration(
                  color: isSel ? const Color(0xFF6366F1) : const Color(0xFFF9FAFB),
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: isSel ? Colors.transparent : Colors.grey.shade200),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.asset(data['image'] ?? '', height: 35, width: 35, fit: BoxFit.cover,
                          errorBuilder: (_, __, ___) => const Icon(Icons.toys, size: 20)),
                    ),
                    const SizedBox(height: 4),
                    Text(name, maxLines: 1, style: TextStyle(fontSize: 9, color: isSel ? Colors.white : Colors.black, fontWeight: isSel ? FontWeight.bold : FontWeight.normal)),
                  ],
                ),
              ),
            );
          },
        );
      },
    );
  }

  Widget _buildLabel(String text) => Padding(
    padding: const EdgeInsets.only(bottom: 8),
    child: Text(text, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.w600, color: Colors.grey)),
  );

  InputDecoration _inputStyle(String hint) => InputDecoration(
    hintText: hint,
    filled: true,
    fillColor: const Color(0xFFF9FAFB),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(12), borderSide: BorderSide.none),
  );

  Widget _buildDot(int index) => AnimatedContainer(
    duration: const Duration(milliseconds: 200),
    height: 6,
    width: _currentPage == index ? 20 : 6,
    margin: const EdgeInsets.symmetric(horizontal: 3),
    decoration: BoxDecoration(color: _currentPage == index ? const Color(0xFF6366F1) : const Color(0xFFE5E7EB), borderRadius: BorderRadius.circular(10)),
  );

  Widget _btnSemplice({required String text, required VoidCallback onPressed, bool isActive = true}) {
    return SizedBox(
      width: double.infinity,
      height: 55,
      child: ElevatedButton(
        onPressed: isActive ? onPressed : null,
        style: ElevatedButton.styleFrom(
          backgroundColor: isActive ? const Color(0xFF587DBD) : Colors.grey.shade300,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(kRadiusL)),
          elevation: 0,
        ),
        child: Text(text, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white)),
      ),
    );
  }
}