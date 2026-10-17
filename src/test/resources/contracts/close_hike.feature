# language: fr
@UC08 @command_closeHike
Fonctionnalité: Fermer automatiquement une randonnée
  Plan du scénario: Fermer lorsque l'échéance est atteinte
    Étant donné une randonnée "<statut>" dont la date limite d'inscription est atteinte
    Quand le système invoque closeHike
    Alors la randonnée devient fermée et l'acteur système est consigné dans l'historique
    Et aucune nouvelle inscription ni annulation d'inscription n'est acceptée
    Exemples:
      | statut   |
      | ouverte  |
      | complète |

  Scénario: Ne pas fermer avant l'échéance
    Étant donné une randonnée ouverte dont la date limite est future
    Quand le système invoque closeHike
    Alors la randonnée reste ouverte et aucune fermeture n'est enregistrée
