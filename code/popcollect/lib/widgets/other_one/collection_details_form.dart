import 'package:flutter/material.dart';
import '../../../constants/fonts.dart';
import '../../../constants/sizes.dart';

class CollectionDetailsForm extends StatelessWidget {
  final VoidCallback onCancel;
  final VoidCallback onSave;

  const CollectionDetailsForm({
    super.key,
    required this.onCancel,
    required this.onSave,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kPaddingM),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(kRadiusM),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Collection Details', style: kSectionTitle),
          const SizedBox(height: kSpacingM),

          const Text('Price Paid'),
          const TextField(
            decoration: InputDecoration(prefixText: '€ ', hintText: '12,50'),
          ),

          const SizedBox(height: kSpacingM),

          const Text('Purchase Date'),
          const TextField(
            decoration: InputDecoration(
              hintText: '15/10/2024',
              suffixIcon: Icon(Icons.calendar_today),
            ),
          ),

          const SizedBox(height: kSpacingM),

          const Text('Purchase Location'),
          const TextField(
            decoration: InputDecoration(hintText: 'Pop Mart Brussels'),
          ),

          const SizedBox(height: kSpacingL),

          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: onCancel,
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: onSave,
                  icon: const Icon(Icons.save),
                  label: const Text('Save Changes'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
