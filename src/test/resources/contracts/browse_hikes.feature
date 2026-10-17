# language: fr
@UC01 @command_browseHikes
Fonctionnalité: Parcourir les randonnées
  Scénario: Consulter les randonnées ouvertes aux inscriptions
    Étant donné des randonnées ouvertes, complètes, fermées et annulées
    Quand un visiteur invoque browseHikes sans filtre
    Alors seules les randonnées ouvertes ou complètes avant leur date limite sont retournées par date de début
    Et chaque résultat présente les informations de la randonnée, le nom de l'organisateur et les places restantes
    Et les randonnées complètes affichent zéro place et permettent de rejoindre la liste d'attente

  Scénario: Rechercher par nom de sentier, date et difficulté
    Étant donné plusieurs randonnées ouvertes aux inscriptions
    Quand un utilisateur invoque browseHikes avec le nom "Lac Rose", la date "2026-10-20" et la difficulté modérée
    Alors seuls les résultats correspondant aux trois filtres sont retournés
    Et chaque filtre peut aussi être utilisé seul ou être omis

  Scénario: Indiquer les randonnées adaptées au randonneur connecté
    Étant donné un randonneur débutant authentifié
    Et des randonnées ouvertes faciles, modérées et difficiles
    Quand il invoque browseHikes sans filtre
    Alors les trois difficultés restent visibles
    Et les randonnées faciles et modérées sont indiquées comme adaptées à son niveau
