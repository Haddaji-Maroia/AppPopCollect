import 'package:flutter/material.dart';

class SingleCardCharacter extends StatelessWidget {
  final String nome;
  final bool ceLho;

  const SingleCardCharacter({
    super.key,
    required this.nome,
    required this.ceLho,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            ceLho ? Icons.check_circle : Icons.radio_button_unchecked,
            color: ceLho ? Colors.green : Colors.grey,
            size: 40,
          ),
          const SizedBox(height: 10),
          Text(
            nome,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),
          Text(
            ceLho ? 'Owned' : 'Missing',
          ),
        ],
      ),
    );
  }
}
