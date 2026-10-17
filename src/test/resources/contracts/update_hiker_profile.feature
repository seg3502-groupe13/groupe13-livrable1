# language: fr
@UC07 @command_updateHikerProfile
Fonctionnalité: Modifier ses informations personnelles
  Scénario: Modifier son propre profil
    Étant donné un randonneur authentifié devant le formulaire de son profil actuel
    Quand il invoque updateHikerProfile avec des coordonnées, un contact d'urgence et un niveau d'habileté valides
    Alors ses informations personnelles sont enregistrées
    Et son courriel, sa naissance, son adhésion et son certificat restent inchangés

  Plan du scénario: Refuser une modification non autorisée ou invalide
    Étant donné une demande de modification avec "<problème>"
    Quand updateHikerProfile est invoquée
    Alors le profil reste inchangé et une erreur est retournée
    Exemples:
      | problème                         |
      | aucune session authentifiée      |
      | profil d'un autre randonneur     |
      | données obligatoires manquantes  |
