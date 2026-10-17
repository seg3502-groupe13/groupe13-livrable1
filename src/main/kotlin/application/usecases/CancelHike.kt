package application.usecases

import application.dtos.queries.CancelHikeQuery

/** UC11. Only this hike's organizer or an administrator, resolved from the session, may cancel. */
interface CancelHike {
    fun cancelHike(query: CancelHikeQuery)
}
