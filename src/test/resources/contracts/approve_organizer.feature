# language: fr
@UC07 @command_approveOrganizer
Fonctionnalité: Approuver un organisateur
  Scénario: Enregistrer une certification et un niveau
    Étant donné un administrateur authentifié et un randonneur existant
    Et un numéro de certificat, des dates de délivrance et d'expiration cohérentes et un niveau d'organisateur
    Quand il invoque approveOrganizer
    Alors le certificat et le niveau sont enregistrés et le randonneur devient organisateur

  Plan du scénario: Refuser une certification invalide
    Étant donné un administrateur authentifié et une certification avec "<problème>"
    Quand il invoque approveOrganizer pour un randonneur existant
    Alors la certification est refusée et le profil reste inchangé
    Exemples:
      | problème                        |
      | numéro ou niveau manquant       |
      | délivrance après l'expiration   |

  Scénario: Réserver l'approbation aux administrateurs
    Étant donné un randonneur authentifié sans droit administratif
    Quand il invoque approveOrganizer pour lui-même
    Alors une erreur d'autorisation est retournée sans accorder le rôle d'organisateur
