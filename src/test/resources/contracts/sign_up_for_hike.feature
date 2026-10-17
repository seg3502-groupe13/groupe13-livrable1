# language: fr
@UC05 @command_signUpForHike
Fonctionnalité: S'inscrire à une randonnée
  Scénario: Confirmer et prendre la dernière place
    Étant donné un randonneur authentifié avec une adhésion active et un niveau admissible
    Et une randonnée ouverte avant son échéance avec une place restante
    Quand il invoque signUpForHike
    Alors une inscription confirmée et horodatée est enregistrée
    Et la randonnée devient complète en consignant le randonneur responsable du changement
    Et un courriel de confirmation est envoyé

  Scénario: Rejoindre la liste d'attente d'une randonnée complète
    Étant donné un randonneur authentifié avec une adhésion active et un niveau admissible
    Et une randonnée complète avant son échéance avec deux randonneurs en attente
    Quand il invoque signUpForHike
    Alors son inscription est horodatée et placée en attente en position 3
    Et un courriel lui indique sa position dans la liste

  Plan du scénario: Accepter les difficultés au plus un niveau au-dessus
    Étant donné un randonneur authentifié de niveau "<habileté>" avec une adhésion active
    Et une randonnée ouverte de difficulté "<difficulté>" avant son échéance avec une place disponible
    Quand il invoque signUpForHike
    Alors son inscription est confirmée
    Exemples:
      | habileté      | difficulté |
      | intermédiaire | facile     |
      | intermédiaire | modérée    |
      | intermédiaire | difficile  |

  Plan du scénario: Refuser une inscription non admissible
    Étant donné une demande d'inscription avec "<problème>"
    Quand signUpForHike est invoquée
    Alors l'inscription est refusée sans modification
    Exemples:
      | problème                                    |
      | aucune session authentifiée                 |
      | adhésion expirée ou suspendue               |
      | difficulté supérieure de deux niveaux       |
      | date limite atteinte                        |
      | randonnée fermée ou annulée                 |
      | inscription déjà confirmée ou en attente    |
