import 'package:flutter/material.dart';
import '../../constants/sizes.dart';

class CollectionDetailsForm extends StatefulWidget {
  final VoidCallback onCancel;
  final Function(double?) onSave;
  final double? initialPrice;

  const CollectionDetailsForm({
    super.key,
    required this.onCancel,
    required this.onSave,
    this.initialPrice,
  });

  @override
  State<CollectionDetailsForm> createState() => _CollectionDetailsFormState();
}

class _CollectionDetailsFormState extends State<CollectionDetailsForm> {
  final TextEditingController priceController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController locationController = TextEditingController();

  @override
  void initState() {
    super.initState();
    if (widget.initialPrice != null) {
      priceController.text = widget.initialPrice!.toStringAsFixed(2);
    }
  }

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
          const Text(
            'Collection Details',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),

          const SizedBox(height: kSpacingM),

          // PRICE
          const Text('Price Paid'),
          TextField(
            controller: priceController,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              prefixText: '€ ',
              hintText: '12.50',
            ),
          ),

          const SizedBox(height: kSpacingM),

          // DATE
          const Text('Purchase Date'),
          TextField(
            controller: dateController,
            decoration: const InputDecoration(
              hintText: '15/10/2024',
              suffixIcon: Icon(Icons.calendar_today),
            ),
          ),

          const SizedBox(height: kSpacingM),

          // LOCATION
          const Text('Purchase Location'),
          TextField(
            controller: locationController,
            decoration: const InputDecoration(
              hintText: 'Pop Mart Brussels',
            ),
          ),

          const SizedBox(height: kSpacingL),

          Row(
            children: [
              Expanded(
                child: OutlinedButton(
                  onPressed: widget.onCancel,
                  child: const Text('Cancel'),
                ),
              ),
              const SizedBox(width: kSpacingS),
              Expanded(
                child: ElevatedButton.icon(
                  onPressed: () {
                    final price = double.tryParse(
                      priceController.text.replaceAll(',', '.'),
                    );

                    if (price != null) {
                      widget.onSave(price);
                    }
                  },
                  icon: const Icon(Icons.save),
                  label: const Text('Save'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

}
