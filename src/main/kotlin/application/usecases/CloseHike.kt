package application.usecases

import application.dtos.queries.CloseHikeQuery

/** UC08. Internal system command using the application's clock and recording the system actor. */
interface CloseHike {
    fun closeHike(query: CloseHikeQuery)
}
