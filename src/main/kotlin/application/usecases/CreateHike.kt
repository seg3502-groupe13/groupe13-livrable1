package application.usecases

import application.dtos.queries.CreateHikeQuery

/** UC10. The trusted current account must be an approved organizer; returns the new hike ID. */
interface CreateHike {
    fun createHike(query: CreateHikeQuery): String
}
