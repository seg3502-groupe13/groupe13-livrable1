# language: fr
@UC10 @command_createHike
Fonctionnalité: Créer une randonnée
  Contexte:
    Étant donné un organisateur approuvé et authentifié
    Et une demande complète pour un sentier CCN réel et autorisé dans la région et la saison prévues
    Et un début futur, une durée et une capacité positives
    Et une certification couvrant la date de randonnée avec un niveau suffisant
    Et une date limite future avant le début et au plus 14 jours avant celui-ci

  Scénario: Créer sur un sentier vérifié de la CCN
    Étant donné le service CCN disponible pour vérifier les informations du sentier
    Quand l'organisateur invoque createHike
    Alors la randonnée reçoit un identifiant unique et le statut ouverte
    Et sa difficulté et son point de départ proviennent du sentier
    Et son organisateur et l'instant de création sont enregistrés dans l'historique
    Et les randonneurs peuvent immédiatement s'y inscrire

  Plan du scénario: Refuser un sentier non admissible
    Étant donné le sentier dans la situation "<problème>"
    Quand l'organisateur invoque createHike
    Alors aucune randonnée n'est créée
    Exemples:
      | problème                       |
      | absent des données CCN         |
      | randonnée interdite            |
      | fermé pendant la saison prévue |

  Plan du scénario: Refuser une certification insuffisante
    Étant donné une certification avec "<problème>"
    Quand l'organisateur invoque createHike
    Alors aucune randonnée n'est créée
    Exemples:
      | problème                                  |
      | expiration avant la date de la randonnée  |
      | niveau inférieur à la difficulté du sentier |

  Plan du scénario: Refuser des dates ou données invalides
    Étant donné la demande avec "<problème>"
    Quand l'organisateur invoque createHike
    Alors aucune randonnée n'est créée
    Exemples:
      | problème                                  |
      | échéance plus de 14 jours avant le début   |
      | échéance atteinte ou après le début        |
      | données obligatoires absentes ou invalides |

  Scénario: Refuser la création sans approbation d'organisateur
    Étant donné un randonneur authentifié sans certification approuvée
    Quand il invoque createHike
    Alors une erreur d'autorisation est retournée sans création

  Plan du scénario: Créer pendant une panne seulement si le sentier reste vérifiable
    Étant donné le service CCN indisponible
    Et une copie locale des données requises "<copie>"
    Quand l'organisateur invoque createHike
    Alors la création est "<résultat>"
    Et les autres fonctions du système restent accessibles
    Exemples:
      | copie                      | résultat |
      | validée et en lecture seule | acceptée |
      | absente                    | refusée  |
