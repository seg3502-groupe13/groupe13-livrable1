package application.dtos.responses

import domain.registrations.RegistrationStatus

data class SignUpForHikeResponse(
    val registrationId: String,
    val status: RegistrationStatus,
    val waitingListPosition: Int?,
)
