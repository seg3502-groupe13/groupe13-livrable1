# language: fr
@UC02 @command_registerHiker
Fonctionnalité: Enregistrer un randonneur
  Scénario: Enregistrer un membre adulte invité
    Étant donné un visiteur majeur avec un code d'invitation valide fourni par le club
    Et un courriel unique, un mot de passe et toutes les informations personnelles requises
    Et sa décharge de responsabilité acceptée
    Quand il invoque registerHiker
    Alors un compte et un profil avec une adhésion active sont enregistrés de façon sécurisée
    Et un identifiant de randonneur est retourné

  Scénario: Enregistrer un mineur avec l'accord de son tuteur
    Étant donné un visiteur de moins de 18 ans avec un code valide et des informations complètes
    Et la décharge acceptée par son tuteur légal "Camille Roy"
    Quand il invoque registerHiker
    Alors son compte est créé avec une adhésion active
    Et le nom du tuteur et l'acceptation de la décharge sont conservés

  Plan du scénario: Refuser un enregistrement invalide
    Étant donné une demande d'enregistrement avec "<problème>"
    Quand le visiteur invoque registerHiker
    Alors une erreur est retournée sans création de compte
    Exemples:
      | problème                              |
      | code d'invitation invalide             |
      | courriel déjà utilisé                 |
      | informations obligatoires manquantes  |

  Plan du scénario: Exiger la décharge appropriée
    Étant donné une demande autrement valide avec "<problème>"
    Quand le visiteur invoque registerHiker
    Alors l'enregistrement est refusé sans création de compte
    Exemples:
      | problème                                      |
      | décharge non acceptée                         |
      | randonneur mineur sans nom de tuteur légal     |
