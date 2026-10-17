package application.dtos.queries

/** Only the authenticated owner may cancel this registration. */
data class CancelSignUpQuery(val registrationId: String)
