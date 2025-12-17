import 'package:dto/models/my_transaction.dart';

String generateId() {
  final now = DateTime.now().microsecondsSinceEpoch;
  final random = DateTime.now().millisecondsSinceEpoch.remainder(1000000);
  return '${now.toRadixString(36)}${random.toRadixString(36)}';
}

List<MyTransaction> transactions = [
  MyTransaction(
    id: generateId(),
    title: "Salle Royale",
    description: "Location pour soirée grandiose",
    amount: 500.0,
    date: DateTime(2023, 8, 19),
  ),
  MyTransaction(
    id: generateId(),
    title: "Dîner Gourmand",
    description: "Traiteur de plaisirs culinaires",
    amount: 300.0,
    date: DateTime(2023, 8, 19),
  ),
  MyTransaction(
    id: generateId(),
    title: "Feux d'Artifice",
    description: "Étincelles dans la nuit",
    amount: 200.0,
    date: DateTime(2023, 8, 20),
  ),
  MyTransaction(
    id: generateId(),
    title: "Robe Étincelante",
    description: "Pour briller sous les projecteurs",
    amount: 150.0,
    date: DateTime(2023, 8, 20),
  ),
  MyTransaction(
    id: generateId(),
    title: "Cours de Danse",
    description: "Pour impressionner sur la piste",
    amount: 80.0,
    date: DateTime(2023, 8, 21),
  ),
  MyTransaction(
    id: generateId(),
    title: "Pansements Ampoules",
    description: "Achats préventifs pour la soirée",
    amount: 20.0,
    date: DateTime(2023, 8, 21),
  ),
  MyTransaction(
    id: generateId(),
    title: "Crampes de Danse",
    description: "Consultation d'urgence",
    amount: 50.0,
    date: DateTime(2023, 8, 21),
  ),
  MyTransaction(
    id: generateId(),
    title: "Talons Impressionnants",
    description: "Achats pour paraître plus grand(e)",
    amount: 75.0,
    date: DateTime(2023, 8, 21),
  ),
  MyTransaction(
    id: generateId(),
    title: "Tapis Rouge",
    description: "Pour entrées spectaculaires",
    amount: 30.0,
    date: DateTime(2023, 8, 21),
  ),
  MyTransaction(
    id: generateId(),
    title: "Piste de Danse VIP",
    description: "Réservation exclusive mondiale",
    amount: 1000.0,
    date: DateTime(2023, 8, 22),
  ),
  MyTransaction(
    id: generateId(),
    title: "Chapeaux Fous",
    description: "Pour suivre le thème de la soirée",
    amount: 45.0,
    date: DateTime(2023, 8, 22),
  ),
  MyTransaction(
    id: generateId(),
    title: "Discours Inspirants",
    description: "Cours intensif pour briller à la tribune",
    amount: 150.0,
    date: DateTime(2023, 8, 22),
  ),
  MyTransaction(
    id: generateId(),
    title: "Feu d'Artifice Précoce",
    description: "Oups, c'était une étincelle accidentelle",
    amount: 15.0,
    date: DateTime(2023, 8, 22),
  ),
  MyTransaction(
    id: generateId(),
    title: "Coach de Selfies",
    description: "Apprenez l'art de la pose parfaite",
    amount: 40.0,
    date: DateTime(2023, 8, 23),
  ),
  MyTransaction(
    id: generateId(),
    title: "Achats de Confettis",
    description: "Pour rendre chaque moment éclatant",
    amount: 10.0,
    date: DateTime(2023, 8, 23),
  ),
  MyTransaction(
    id: generateId(),
    title: "Chauffeur de Limo",
    description: "Arrivez en style... et en retard",
    amount: 200.0,
    date: DateTime(2023, 8, 24),
  ),
  MyTransaction(
    id: generateId(),
    title: "Élégance Extrême",
    description: "Achat de gants blancs assortis",
    amount: 25.0,
    date: DateTime(2023, 8, 24),
  ),
  MyTransaction(
    id: generateId(),
    title: "Cours de Rires Contagieux",
    description: "Fou rire garanti en une leçon",
    amount: 30.0,
    date: DateTime(2023, 8, 24),
  ),
  MyTransaction(
    id: generateId(),
    title: "Micro pour Discours Épiques",
    description: "Se sentir comme un leader inspirant",
    amount: 50.0,
    date: DateTime(2023, 8, 24),
  ),
  MyTransaction(
    id: generateId(),
    title: "Photobooth Fantastique",
    description: "Souvenirs photogéniques garantis",
    amount: 70.0,
    date: DateTime(2023, 8, 25),
  ),
];
