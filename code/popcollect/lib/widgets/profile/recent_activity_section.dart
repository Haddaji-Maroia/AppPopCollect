import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constants/sizes.dart';
import '../../constants/fonts.dart';
import 'activity_card.dart';

class RecentActivitySection extends StatelessWidget {
  final List<QueryDocumentSnapshot> docs;

  const RecentActivitySection({super.key, this.docs = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Recent Activity', style: kSectionTitleText),
        const SizedBox(height: kSpacingS), // Ridotto lo spazio dal titolo

        if (docs.isEmpty)
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text("No recent activities found.", style: kCaptionText),
          ),

        // Usiamo un Column senza padding extra tra i figli
        ...docs.map((doc) {
          final data = doc.data() as Map<String, dynamic>;
          final String type = data['type'] ?? '';

          // Rimosso il Padding widget esterno per rendere tutto più serrato
          return ActivityCard(
            icon: _getIconData(type),
            iconBg: _getIconColor(type),
            title: data['title'] ?? 'Activity',
            subtitle: data['description'] ?? '',
            date: _formatDate(data['date']),
          );
        }),
      ],
    );
  }

  // Icone e colori coerenti con il tuo database
  IconData _getIconData(String type) {
    switch (type) {
      case 'added': return Icons.check;
      case 'secret': return Icons.star;
      case 'system': return Icons.emoji_events;
      default: return Icons.notifications;
    }
  }

  Color _getIconColor(String type) {
    switch (type) {
      case 'added': return Colors.green;
      case 'secret': return Colors.amber;
      case 'system': return Colors.purple;
      default: return Colors.grey;
    }
  }

  String _formatDate(dynamic firestoreDate) {
    if (firestoreDate is Timestamp) {
      final date = firestoreDate.toDate();
      return "${date.day}/${date.month}/${date.year}";
    }
    return "Recently";
  }
}