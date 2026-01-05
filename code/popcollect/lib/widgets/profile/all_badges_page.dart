import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

import '../../constants/fonts.dart';
import '../../constants/sizes.dart';


class AllBadgesPage extends StatelessWidget {
  const AllBadgesPage({super.key});

  static const routeName = '/all-badges';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Badge Collection', style: kTitleText),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: Colors.black,
      ),
      body: StreamBuilder<QuerySnapshot<Map<String, dynamic>>>(
        stream: FirebaseFirestore.instance.collection('global_badges').snapshots(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          final docs = snapshot.data?.docs ?? [];
          if (docs.isEmpty) {
            return _buildEmptyPlaceholder();
          }

          // GRIGLIA DEI BADGE
          return GridView.builder(
            padding: const EdgeInsets.all(kPagePadding),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              mainAxisSpacing: 20,
              crossAxisSpacing: 20,
              childAspectRatio: 0.8,
            ),
            itemCount: docs.length,
            itemBuilder: (context, index) {
              final data = docs[index].data();
              final bool isUnlocked = data['isUnlocked'] ?? false;
              final String id = data['id'] ?? '';

              return Column(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: isUnlocked ? Colors.white : Colors.grey[200],
                        boxShadow: isUnlocked ? [
                          BoxShadow(
                            color: _getBadgeColor(id).withOpacity(0.2),
                            blurRadius: 8,
                            offset: const Offset(0, 4),
                          )
                        ] : [],
                        border: Border.all(
                          color: isUnlocked ? _getBadgeColor(id) : Colors.transparent,
                          width: 2,
                        ),
                      ),
                      child: Center(
                        child: Opacity(
                          opacity: isUnlocked ? 1.0 : 0.3,
                          child: Icon(
                            _getBadgeIcon(id),
                            size: 30,
                            color: isUnlocked ? _getBadgeColor(id) : Colors.grey[600],
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    data['name'] ?? 'Badge',
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: isUnlocked ? FontWeight.bold : FontWeight.normal,
                      color: isUnlocked ? Colors.black87 : Colors.grey,
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }


  Widget _buildEmptyPlaceholder() {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.emoji_events_outlined, size: 80, color: Colors.grey[300]),
          const SizedBox(height: 16),
          const Text(
            "No badges found",
            style: kSubtitleText,
          ),
          const SizedBox(height: 8),
          const Text(
            "Complete activities to unlock them!",
            style: kCaptionText,
          ),
        ],
      ),
    );
  }

  Color _getBadgeColor(String id) {
    switch (id) {
      case 'newbie': return Colors.orange;
      case 'hunter': return Colors.purple;
      case 'pro': return Colors.blueAccent;
      case 'loyal': return Colors.redAccent;
      case 'top_fan': return Colors.green;
      default: return Colors.amber;
    }
  }

  IconData _getBadgeIcon(String id) {
    switch (id) {
      case 'newbie': return Icons.auto_awesome;
      case 'hunter': return Icons.visibility;
      case 'pro': return Icons.workspace_premium;
      default: return Icons.emoji_events;
    }
  }
}