package application.dtos.queries

import java.time.LocalDate

/** Contains secrets and personal data: never log or return this request verbatim. */
data class RegisterHikerQuery(
    val invitationCode: String,
    val email: String,
    val password: String,
    val dateOfBirth: LocalDate,
    val profile: PersonalProfileQuery,
    val liabilityWaiver: LiabilityWaiverQuery,
)
