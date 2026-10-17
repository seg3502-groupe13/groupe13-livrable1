# language: fr
@UC09 @command_sendHikeReminder
Fonctionnalité: Envoyer un rappel un jour avant la randonnée
  Scénario: Rappeler aux seuls participants confirmés
    Étant donné une randonnée non annulée prévue dans un jour
    Et des inscriptions confirmées, en attente et annulées
    Et des prévisions sans pluie ni neige
    Quand le système invoque sendHikeReminder
    Alors seuls les participants confirmés reçoivent un courriel
    Et le rappel contient la date, l'heure, le sentier et son point de départ

  Plan du scénario: Ajouter un avertissement météorologique
    Étant donné une randonnée non annulée prévue dans un jour avec des participants confirmés
    Et des prévisions de "<météo>" au point de départ à la date de la randonnée
    Quand le système invoque sendHikeReminder
    Alors les rappels comprennent un avertissement météorologique
    Exemples:
      | météo |
      | pluie |
      | neige |

  Scénario: Envoyer sans avertissement lorsque les prévisions sont indisponibles
    Étant donné une randonnée non annulée prévue dans un jour avec des participants confirmés
    Et le service météorologique indisponible
    Quand le système invoque sendHikeReminder
    Alors les rappels sont envoyés sans avertissement météorologique

  Scénario: Ne pas rappeler une randonnée annulée
    Étant donné une randonnée annulée prévue dans un jour
    Quand le système invoque sendHikeReminder
    Alors aucun rappel n'est envoyé
