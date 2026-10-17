package application.usecases

import application.dtos.queries.SignUpForHikeQuery
import application.dtos.responses.SignUpForHikeResponse

/** UC05. The authenticated hiker is resolved from the session and must have active membership. */
interface SignUpForHike {
    fun signUpForHike(query: SignUpForHikeQuery): SignUpForHikeResponse
}
