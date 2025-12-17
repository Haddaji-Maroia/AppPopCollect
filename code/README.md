# PopCollect — Gestionnaire de collections blind-box (Popmart, Hirono, …)

**Projet** : Développement d’applications mobiles — HEPL — 2025–2026

**Développée par** : Haddaji Maroia

---

## Structure du dépôt (prévisionnelle)

Le projet est encore en phase de conception. Voici la structure envisagée :

/README.md — documentation du projet

/maquettes/ — captures Figma, moodboard, wireframes et prototypes

/lib/ — code source Flutter (à venir)

/models/ — classes pour représenter les figurines et collections

/screens/ — écrans principaux de l’application

/widgets/ — composants réutilisables

/assets/ — icônes, images et polices utilisées

/pubspec.yaml — dépendances (sera complété au développement)

> Cette structure sera mise à jour pendant la phase de développement Flutter.
> 

## 2. Présentation de l’application (public non technique)

**PopCollect** est une application mobile destinée aux collectionneuses et collectionneurs de figurines en blind-box Popmart(Hirono, Skullpanada, etc.).

Elle permet de **cataloguer facilement ses pièces**, **suivre la complétion d’une série**, **ajouter des photos personnelles** et **gagner des petits badges** lorsque l’on complète des séries ou atteints des objectifs.

L’idée : proposer une interface simple, jolie et adaptée aux petits écrans, afin que chaque collectionneuse ait toujours sous la main la vue réelle de sa collection, sans devoir gérer des listes Excel ou des notes dispersées.

---

## 3. Étude de l’existant (benchmark réaliste)

Les collectionneuses utilisent généralement des applications issues d’autres domaines — comme la gestion de mangas, de livres ou d’inventaires personnels — qui ne répondent pas totalement à leurs besoins.

| Application | Domaine | Points forts | Points faibles |
| --- | --- | --- | --- |
| **MangaYo!** | Suivi de mangas | Suivi clair et communautaire, interface familière | Peu de personnalisation pour les collections physiques, manque de visuels détaillés |
| **Goodreads** | Suivi de livres | Interface intuitive, communauté active | Pas de visuel produit, expérience peu ludique |
| **Notion (templates)** | Organisation libre | Très personnalisable, flexible | Non optimisé pour mobile, interface complexe pour usage rapide |
| **Funko App** | Suivi de figurines Funko | Catalogue officiel, suivi facile de la collection | Interface peu esthétique, manque de fonctionnalités ludiques et sociales, rigidité dans l’ajout d’objets hors catalogue |

> Conclusion : il n’existe pas d’application simple, esthétique et pensée pour les collectionneuses de blind-box.
PopCollect se positionne donc comme une solution visuelle, intuitive et ludique, centrée sur le plaisir de collectionner et la beauté des figurines.
> 

*2–3 captures d’écran des apps existantes (MangaYo, goodreads et funko App)*

---

## 4. Public cible / Prise en compte des besoins

**Public cible principal** :

- Collectionneuses / collectionneurs de blind-box, 16–35 ans, utilisateurs mobiles, sensibles à l’esthétique kawaii / asiatique.
- Utilisatrices souhaitant gérer leur collection de manière visuelle et rapide.

**Accessibilité & UX** :

- Police lisible, contraste satisfaisant (tests sur petit écran).
- Interface adaptée aux écrans petits (maquettes en taille réduite).
- Onboarding minimal pour expliquer rapidement comment ajouter une figurine.
- Contrôles accessibles (boutons larges, ronds) — prise en compte de handicaps visuels simples (taille de texte, labels).

---

## 5. Personas & User stories

### Personas (exemples)

- **Lina**, 23 ans, étudiante, collectionne des blind-box Popmart ; veut savoir rapidement quelles pièces il lui manque avant d’acheter.
- **Alessia**, 29 ans, collectionneuse passionnée, veut documenter ses pièces avec des photos et dates d’achat.
- **Elisa**, 19 ans, achète des séries au hasard, veut voir sa progression et débloquer des badges.

### User stories (format exigé)

- **En tant que** collectionneuse (Lina), **je veux** ajouter une figurine à ma collection **afin de** suivre ce que je possède.
- **En tant que** collectionneuse, **je veux** visualiser les figurines d’une même série **afin de** voir celles qui me manquent.
- **En tant que** utilisatrice, **je veux** ajouter une photo prise avec la caméra **afin de** personnaliser la fiche de ma figurine.
- **En tant que** utilisatrice connectée, **je veux** synchroniser ma collection dans le cloud **afin de** ne rien perdre en cas de changement d’appareil.
- **En tant que** collectionneuse, **je veux** obtenir un badge quand j’ai complété une série **afin de** sentir une récompense et rester motivée.

---

## 6. Fonctionnalités principales (résumé technique non-jargon)

1. **CRUD figurine** : Ajouter / Voir / Modifier / Supprimer une fiche figurine (titre, série, numéro, statut, photo, note, prix estimé).
2. **Vue série** : Affichage d’une série avec indicateur % complété et éléments manquants.
3. **Photo & caméra** : ajout de photos via caméra ou galerie.
4. **Auth / Sync cloud** : authentification (Firebase Auth) et sauvegarde sur Firestore.
5. **Badges & gamification** : système simple de récompenses quand une série est complétée.
6. **Offline support** : cache local + synchro à la reconnection (principe de base).
7. **Notifications** (optionnel) : rappel sortie nouvelle série / promo.

---

## 7. Maquettes & moodboard

- Moodboard : `/maquettes/moodboard.png`.
- Maquettes écrans : `/maquettes/home.png`, `/maquettes/collection.png`, `/maquettes/fiche.png`, `/maquettes/onboarding.png`.

---

## 8. État d’avancement (à mettre à jour régulièrement)

| Fonctionnalité | Statut | Preuve (GIF / screenshot) |
| --- | --- | --- |
| Auth (Firebase) | À venir | `` |
| CRUD figurine | À venir | `` |
| Vue série / % complétion | À venir |  |
| Photo via caméra | À venir | `` |
| Badges | À venir |  |
| Offline / Sync | À venir |  |

---

## 9. Section développeurs — compilation & configuration

Coming soon....

> origin/main
>
