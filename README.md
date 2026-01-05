# PopCollect — Gestionnaire de collections blind-box

[cite_start]**Projet d'examen** : Développement d’applications mobiles — HEPL — 2025–2026 [cite: 1, 3]
**Développé par** : Haddaji Maroia

---

## 1. Présentation du dépôt
[cite_start]Le projet respecte l'architecture demandée avec une séparation stricte des responsabilités[cite: 84, 88]:

- [cite_start]**/maquettes/** : Contient les Moodboards, wireframes et prototypes (Figma)[cite: 17, 51].
- **/code/popcollect/lib/** :
    - [cite_start]`constants/` : Centralisation de tous les styles (couleurs, polices, tailles) pour bannir les **Magic Numbers**[cite: 89].
    - [cite_start]`dto/` : Définition des objets métier typés (AppUser, Character)[cite: 47, 102].
    - `screens/` : Écrans principaux (Home, Collection, Wishlist, Profile).
    - [cite_start]`widgets/` : Composants factorisés et paramétrables pour éviter les fichiers à rallonge[cite: 85, 86].
    - [cite_start]`services/` : Logique de persistance via Firestore et gestion du cache[cite: 74, 91].

---

## 2. Présentation de l’application (Concept)
[cite_start]**PopCollect** répond au besoin spécifique des collectionneurs de figurines "blind-box" (Popmart, Hirono, etc.)[cite: 9]. [cite_start]L'application permet de cataloguer visuellement ses pièces, de suivre l'avancement des séries et de transformer l'inventaire fastidieux en une expérience ludique et esthétique[cite: 18, 76].

---

## 3. Étude de l'existant (Benchmark)
[cite_start]L'étude a montré qu'aucune solution actuelle n'allie simplicité visuelle et gestion spécifique aux blind-boxes[cite: 22, 23].

| Application | Points forts | Points faibles |
| --- | --- | --- |
| **MangaYo!** | Suivi communautaire clair | Non adapté aux objets physiques |
| **Goodreads** | Interface intuitive | Pas de visuel produit |
| **Funko App** | Catalogue officiel | Interface rigide et peu esthétique |

---

## 4. Public cible & Accessibilité
- [cite_start]**Public** : Collectionneurs de 16-35 ans sensibles au design[cite: 26].
- [cite_start]**Accessibilité** : Utilisation de contrastes élevés, de boutons larges et d'une navigation simplifiée[cite: 53].
- [cite_start]**Design Responsive** : L'interface a été conçue pour les petits écrans afin d'éviter les débordements[cite: 54, 111].

---

## 5. Personas & User Stories
### Personas
- **Lina** : Étudiante, veut vérifier ses doublons avant un achat.
- **Alessia** : Passionnée, veut documenter ses pièces avec des photos.

### [cite_start]User Stories (Récits Utilisateurs) [cite: 30, 32]
- **En tant que** collectionneuse, **je veux** ajouter une figurine à ma collection **afin de** suivre ce que je possède.
- **En tant qu'** utilisateur, **je veux** visualiser le % de complétion d'une série **afin de** voir mes progrès.
- [cite_start]**En tant qu'** utilisatrice, **je veux** obtenir un badge **afin de** valoriser ma collection[cite: 76].

---

## [cite_start]6. État d’avancement [cite: 43]

| Fonctionnalité | Statut | Preuve visuelle |
| :--- | :---: | :--- |
| **Auth & Sync Cloud** | Terminé | ![Auth GIF](assets/readme/auth.gif) |
| **CRUD Complet (Persistance)** | Terminé | ![CRUD GIF](assets/readme/crud.gif) |
| **StreamBuilder / Temps réel** | Terminé | ![Stream GIF](assets/readme/stream.gif) |
| **Onboarding ludique** | Terminé | ![Onboarding GIF](assets/readme/onboarding.gif) |

---

## [cite_start]7. Section Développeurs (Compilation) [cite: 46]
### Dépendances et Versions
- [cite_start]**Flutter** : stable (dernière version)[cite: 79].
- [cite_start]**Packages** : `cloud_firestore`, `firebase_auth`, `firestore_odm`, `dto`[cite: 47, 102].

### Instructions
1. Cloner le dépôt.
2. S'assurer que le package local `dto` est bien lié.
3. Exécuter `flutter pub get`.
4. Lancer l'application : `flutter run`.

*Note : Les clés API et la configuration Firebase sont incluses dans `firebase_options.dart`. Les règles Firestore sont valides jusqu'au 30/06/2026.* [cite: 48, 105]

---
### [cite_start]Qualité du code [cite: 80, 81]
- **Zéro Magic Numbers** : toutes les valeurs passent par le fichier `sizes.dart`.
- [cite_start]**Typage strict** : aucun accès direct aux données JSON brut; utilisation systématique de classes métier[cite: 92, 101].
- [cite_start]**Performance** : Utilisation de `StreamBuilder` pour les flux en temps réel[cite: 90].
