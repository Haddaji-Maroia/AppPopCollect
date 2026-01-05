import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../constants/fonts.dart';
import '../../constants/sizes.dart';
import 'all_badges_page.dart';


class BadgesSection extends StatelessWidget {
  final List<QueryDocumentSnapshot> docs;

  const BadgesSection({super.key, this.docs = const []});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('Badges', style: kSectionTitle),
              // In BadgesSection.dart
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AllBadgesPage()),
                  );
                },
                child: const Text('View All', style: kLinkText),
              ),
            ],
          ),
        ),

        const SizedBox(height: kSpacingS),

        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: const BouncingScrollPhysics(), // Effetto rimbalzo piacevole su iOS/Android
          child: Row(
            children: docs.isEmpty
                ? [const Text("No badges earned yet", style: kCaptionText)]
                : docs.map((doc) {
              final data = doc.data() as Map<String, dynamic>;
              final bool isUnlocked = data['isUnlocked'] ?? false;

              return Container(
                margin: const EdgeInsets.only(right: kSpacingM),
                child: Column(
                  children: [
                    // Contenitore circolare per l'icona
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      width: 80,
                      height: 80,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isUnlocked ? Colors.white : Colors.grey[200],
                        boxShadow: isUnlocked ? [
                          BoxShadow(
                            color: _getBadgeColor(data['id']).withValues(alpha: 0.3),
                            blurRadius: 10,
                            spreadRadius: 2,
                            offset: const Offset(0, 4),
                          )
                        ] : [],
                        border: Border.all(
                          color: isUnlocked ? _getBadgeColor(data['id']) : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Opacity(
                        opacity: isUnlocked ? 1.0 : 0.4,
                        child: Icon(
                          _getBadgeIcon(data['id']),
                          size: 35,
                          color: isUnlocked ? _getBadgeColor(data['id']) : Colors.grey[600],
                        ),
                      ),
                    ),
                    const SizedBox(height: kSpacingS),
                    // Titolo del badge
                    Text(
                      data['name'] ?? 'Badge',
                      textAlign: TextAlign.center,
                      style: kCaptionText.copyWith(
                        fontWeight: isUnlocked ? FontWeight.bold : FontWeight.normal,
                        color: isUnlocked ? Colors.black87 : Colors.grey,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              );
            }).toList(),
          ),
        ),
      ],
    );
  }

  // Colori personalizzati per ogni badge per renderli unici
  Color _getBadgeColor(String? id) {
    switch (id) {
      case 'newbie': return Colors.orange;
      case 'hunter': return Colors.purple;
      case 'pro': return Colors.blueAccent;
      default: return Colors.amber;
    }
  }

  IconData _getBadgeIcon(String? id) {
    switch (id) {
      case 'newbie': return Icons.auto_awesome;
      case 'hunter': return Icons.visibility;
      case 'pro': return Icons.workspace_premium;
      default: return Icons.emoji_events;
    }
  }
}