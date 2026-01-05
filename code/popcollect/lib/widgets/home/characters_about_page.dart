import 'package:flutter/material.dart';
import 'package:dto/models/collection.dart';
import '../../constants/sizes.dart';

class CharactersAboutPage extends StatelessWidget {
  static const routeName = '/characters-detail';

  const CharactersAboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    // Recuperiamo l'oggetto AppCollection passato come argomento dal Navigator
    final collection = ModalRoute.of(context)!.settings.arguments as AppCollection;

    return Scaffold(
      backgroundColor: Colors.white,
      // Pulsante di interazione statico per riempire la UI
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        label: const Text("Add to Wishlist", style: TextStyle(color: Colors.white)),
        icon: const Icon(Icons.favorite_border, color: Colors.white),
        backgroundColor: Colors.black,
      ),
      body: CustomScrollView(
        slivers: [
          // HEADER DINAMICO
          SliverAppBar(
            expandedHeight: 320,
            pinned: true,
            iconTheme: const IconThemeData(color: Colors.white),
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                collection.name,
                style: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  shadows: [Shadow(blurRadius: 10, color: Colors.black54)],
                ),
              ),
              background: Stack(
                fit: StackFit.expand,
                children: [
                  Image.asset(
                    collection.image,
                    fit: BoxFit.cover,
                  ),
                  const DecoratedBox(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [Colors.transparent, Colors.black87],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),

          // CONTENUTO DELLA PAGINA
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(kSpacingL),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Riga Info Dinamica (da Firestore)
                  _buildInfoRow(collection),

                  const SizedBox(height: kSpacingL),

                  // 1. SEZIONE ABOUT (Statica per dare corpo alla pagina)
                  const Text(
                    "About this Series",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: kSpacingS),
                  Text(
                    "Each box in the ${collection.name} series contains a surprise figure. Collect them all to find the rare secret editions hidden in the collection. A must-have for every art toy enthusiast.",
                    style: TextStyle(color: Colors.grey[700], height: 1.5, fontSize: 15),
                  ),

                  const SizedBox(height: kSpacingL),

                  // 2. SEZIONE "HOW IT WORKS" (Grafica Statica)
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: kSpacingM),
                    decoration: BoxDecoration(
                      color: Colors.grey[50],
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.grey[200]!),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        _buildStep(Icons.shopping_bag_outlined, "Pick"),
                        Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey[300]),
                        _buildStep(Icons.inventory_2_outlined, "Unbox"),
                        Icon(Icons.arrow_forward_ios, size: 12, color: Colors.grey[300]),
                        _buildStep(Icons.star_border, "Collect"),
                      ],
                    ),
                  ),

                  const SizedBox(height: kSpacingL),

                  // 3. SEZIONE GALLERY PERSONAGGI
                  const Text(
                    "Characters Gallery",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: kSpacingM),

                  // Segnaposto per la grid futura
                  Container(
                    height: 200,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.grey[200]!, style: BorderStyle.solid),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(Icons.auto_awesome_motion, color: Colors.grey[400], size: 40),
                        const SizedBox(height: 10),
                        Text(
                          "Character list coming soon...",
                          style: TextStyle(color: Colors.grey[500]),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 100), // Spazio extra per lo scroll
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // --- WIDGETS DI SUPPORTO ---

  Widget _buildInfoRow(AppCollection col) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        _infoItem(Icons.format_list_numbered, "${col.total}", "Total"),
        _infoItem(Icons.auto_awesome, "${col.secret}", "Secret"),
        _infoItem(Icons.euro, "${col.price.toStringAsFixed(2)}", "Price"),
      ],
    );
  }

  Widget _infoItem(IconData icon, String value, String label) {
    return Column(
      children: [
        Icon(icon, color: Colors.black87, size: 28),
        const SizedBox(height: 8),
        Text(value, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        Text(label, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
      ],
    );
  }

  Widget _buildStep(IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 26, color: Colors.black54),
        const SizedBox(height: 6),
        Text(
            label,
            style: const TextStyle(fontSize: 12, fontWeight: FontWeight.w600, color: Colors.black54)
        ),
      ],
    );
  }
}