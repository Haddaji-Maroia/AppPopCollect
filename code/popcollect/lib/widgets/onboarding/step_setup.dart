import 'package:flutter/material.dart';
import 'package:dto/dto.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import '../../widgets/form/primary_button.dart';
import 'onboarding_elements.dart';
import 'collection_selector.dart';

class StepSetup extends StatelessWidget {
  final TextEditingController nameController;
  final List<String> selectedSeries;
  final List<AppCollection> collections;
  final Function(String) onToggleSeries;
  final VoidCallback onNext;
  final VoidCallback onSkip;

  const StepSetup({
    super.key,
    required this.nameController,
    required this.selectedSeries,
    required this.collections,
    required this.onToggleSeries,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    bool canContinue = nameController.text.isNotEmpty && selectedSeries.isNotEmpty;

    return SingleChildScrollView(
      padding: const EdgeInsets.all(kPagePadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("Let's start!", style: kSectionTitle),
          const SizedBox(height: kSpacingL),
          const InputLabel("Your Name"),
          TextField(
            controller: nameController,
            decoration: InputDecoration(
              hintText: 'Enter name',
              filled: true,
              fillColor: const Color(0xFFF9FAFB),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(kRadiusL),
                borderSide: BorderSide.none,
              ),
            ),
          ),
          const SizedBox(height: kSpacingL),
          const InputLabel("What do you collect?"),
          const SizedBox(height: kSpacingS),
          CollectionSelector(
            collections: collections,
            selectedSeries: selectedSeries,
            onToggle: onToggleSeries,
          ),
          const SizedBox(height: kSpacingXL),
          PrimaryButton(
            text: 'Continue',
            onPressed: canContinue ? onNext : () {},
            backgroundColor: canContinue ? const Color(0xFF587DBD) : Colors.grey.shade300,
          ),
          Center(
            child: TextButton(
              onPressed: onSkip,
              child: const Text('I already have an account', style: kCaptionText),
            ),
          ),
        ],
      ),
    );
  }
}