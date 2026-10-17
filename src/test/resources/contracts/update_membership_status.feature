# language: fr
@UC07 @command_updateMembershipStatus
Fonctionnalité: Modifier un statut d'adhésion
  Plan du scénario: Enregistrer un statut en tant qu'administrateur
    Étant donné un administrateur authentifié et un randonneur existant
    Quand il invoque updateMembershipStatus avec le statut "<statut>"
    Alors le statut d'adhésion du randonneur devient "<statut>"
    Exemples:
      | statut    |
      | active    |
      | expirée   |
      | suspendue |

  Scénario: Réserver la modification aux administrateurs
    Étant donné un randonneur authentifié sans droit administratif
    Quand il invoque updateMembershipStatus
    Alors une erreur d'autorisation est retournée et le statut reste inchangé
