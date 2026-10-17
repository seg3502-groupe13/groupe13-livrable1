# language: fr
@UC11 @command_cancelHike
Fonctionnalité: Annuler une randonnée
  Plan du scénario: Annuler avant le début avec un motif
    Étant donné "<acteur>" authentifié et une randonnée non commencée
    Et des inscriptions confirmées, en attente et déjà annulées
    Quand cet acteur invoque cancelHike avec le motif "Sentier dangereux"
    Alors la randonnée et toutes ses inscriptions actives deviennent annulées
    Et chaque participant concerné reçoit un courriel avec le motif
    Et l'acteur, l'instant et le motif sont consignés
    Exemples:
      | acteur                        |
      | l'organisateur de la randonnée |
      | un administrateur             |

  Scénario: Permettre l'annulation après la fermeture
    Étant donné l'organisateur authentifié et sa randonnée fermée mais non commencée
    Quand il invoque cancelHike avec un motif non vide
    Alors la randonnée et toutes ses inscriptions actives deviennent annulées
    Et les participants concernés sont avisés par courriel

  Plan du scénario: Refuser une annulation interdite
    Étant donné une demande d'annulation avec "<problème>"
    Quand cancelHike est invoquée
    Alors la randonnée et les inscriptions restent inchangées
    Exemples:
      | problème                              |
      | autre organisateur sans droit administratif |
      | motif vide                            |
      | début de la randonnée atteint         |
      | aucune session authentifiée           |
