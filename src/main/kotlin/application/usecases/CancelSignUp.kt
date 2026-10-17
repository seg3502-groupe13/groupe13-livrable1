package application.usecases

import application.dtos.queries.CancelSignUpQuery

/** UC06. Ownership is checked against the trusted current account before any mutation. */
interface CancelSignUp {
    fun cancelSignUp(query: CancelSignUpQuery)
}
