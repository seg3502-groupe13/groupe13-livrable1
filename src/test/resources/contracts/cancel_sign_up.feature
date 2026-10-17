# language: fr
@UC06 @command_cancelSignUp
Fonctionnalité: Annuler une inscription
  Scénario: Annuler une place confirmée et promouvoir le premier en attente
    Étant donné un randonneur authentifié propriétaire d'une inscription confirmée
    Et une randonnée complète avant son échéance avec R2 puis R3 en liste d'attente
    Quand il invoque cancelSignUp pour son inscription
    Alors son inscription devient annulée
    Et R2 est confirmé automatiquement et informé par courriel
    Et R3 reste en attente et la randonnée reste complète

  Plan du scénario: Retirer une inscription sans promotion
    Étant donné un randonneur authentifié propriétaire d'une inscription "<inscription>"
    Et la randonnée avant son échéance dans la situation "<situation>"
    Quand il invoque cancelSignUp pour son inscription
    Alors son inscription devient annulée et aucune autre inscription n'est promue
    Et la randonnée est "<statut>"
    Et tout changement de statut conserve son responsable
    Exemples:
      | inscription | situation                    | statut   |
      | confirmée   | complète sans liste d'attente | ouverte  |
      | en attente  | complète avec liste d'attente | complète |

  Plan du scénario: Refuser un retrait interdit
    Étant donné une demande d'annulation avec "<problème>"
    Quand cancelSignUp est invoquée
    Alors aucune inscription n'est modifiée
    Exemples:
      | problème                         |
      | date limite atteinte             |
      | inscription d'un autre compte    |
      | aucune session authentifiée      |
