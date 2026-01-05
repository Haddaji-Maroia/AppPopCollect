# 🎁 PopCollect — Gestionnaire de collections Blind-Box

## Projet d’examen  
**Développement d’applications mobiles (DAM)**  
**HEPL — Année académique 2025–2026**

- **Étudiante :** Haddaji Maroia  
- **Enseignant :** Daniel Schreurs  
- **Technologies :** Flutter · Firebase · Firestore ODM · DTO  

---

## Présentation générale

**PopCollect** est une application mobile destinée aux collectionneurs de figurines *blind-box* (Pop Mart, Hirono, Dimoo, Molly, etc.).

L’objectif de l’application est de proposer une **gestion visuelle, intuitive et ludique** des collections, en mettant l’accent sur :
- la progression par série,
- la complétion,
- la valorisation de l’avancement de l’utilisateur.

PopCollect transforme une simple gestion d’inventaire en une **expérience engageante**, pensée pour un public sensible au design.

---


## Structure du dépôt
----------------------

Pour respecter l'architecture demandée3, le code est divisé en projets distincts dans le dossier code/.

*   **/maquettes/** : Moodboard, wireframes.
    
*   **/code/popcollect/lib/** :
    
    *   constants/ : Centralisation des styles (couleurs, polices, tailles) pour bannir les **Magic Numbers**.
        
    *   dto/ : Définition des objets métier typés (AppUser, Character) pour éviter le JSON.
        
    *   screens/ : Écrans principaux (Home, Collection, Wishlist, Profile).
        
    *   widgets/ : Composants factorisés (HomeHeader, TotalProgressCard) pour une meilleure maintenabilité.
        
    *   services/ : Logique Firebase et Firestore ODM.
        
*   **/assets/** : Icônes SVG et images des figurines.


Cette architecture garantit :
- lisibilité du code,
- maintenabilité,
- évolutivité,
- conformité aux bonnes pratiques Flutter.

---

## Objectifs fonctionnels

L’application permet à l’utilisateur de :

- s’authentifier via Firebase,
- consulter les séries disponibles,
- visualiser les figurines d’une série,
- ajouter / supprimer une figurine de sa collection (CRUD),
- suivre la progression globale et par série,
- conserver les données synchronisées en temps réel.

---

## 🔍 Étude de l’existant

Une analyse comparative a été réalisée avant la conception.

| Application | Points forts | Limites |
|------------|-------------|--------|
| MangaYo! | Communauté active | Pas adaptée aux objets physiques |
| Goodreads | UX claire | Peu de visuels produits |
| Funko App | Catalogue officiel | Interface rigide |

**PopCollect** se distingue par :
- une approche 100 % visuelle,
- une UX orientée progression,
- une personnalisation par collection.

## Public cible & Accessibilité
--------------------------------

*   **Cible** : Passionnés de 16-35 ans, utilisateurs mobiles intensifs.
    
*   **Conception inclusive** : Utilisation de contrastes élevés, de boutons larges et de tailles de texte adaptées.
    
*   **Petits écrans** : L'interface a été testée sur des simulateurs de petite taille pour éviter tout débordement.


---
    

## Personas & User Stories

### Persona principal

**Maroia, 22 ans**  
Étudiante, passionnée de figurines Hirono.  
Elle souhaite :
- savoir ce qu’elle possède,
- éviter les doublons,
- voir sa progression rapidement.

### User Stories

- *En tant que collectionneuse*, je veux ajouter une figurine afin de suivre précisément ma collection.
- *En tant qu’utilisatrice*, je veux voir le pourcentage de complétion d’une série.
- *En tant qu’utilisateur*, je veux visualiser mes progrès de manière gratifiante.

---

## État d’avancement

| Fonctionnalité | Statut |
|---------------|--------|
| Onboarding multi-écrans | ✅ Terminé |
| Authentification Firebase | ✅ Terminé |
| CRUD figurines | ✅ Terminé |
| Séries dynamiques Firestore | ✅ Terminé |
| Progression visuelle | ✅ Terminé |
| Synchronisation temps réel | ✅ Terminé |
| Cache local (offline) | ✅ Terminé |

---

## Architecture technique

### Technologies
- **Flutter** (stable)
- **Firebase Authentication**
- **Cloud Firestore**
- **firestore_odm**
- **DTO (projet séparé)**

### Gestion des données
- Données strictement typées
- Aucun JSON brut manipulé dans l’UI
- Accès Firestore via ODM
- Lecture des données avec `StreamBuilder`

---

## Instructions de compilation

### Prérequis
- Flutter SDK installé
- Un émulateur ou un appareil réel

### Étapes

```bash
git clone <url-du-depot>
cd code/popcollect
flutter pub get
flutter run
