package application.dtos.queries

import domain.hikers.SkillLevel
import domain.hikes.HikeDifficulty
import java.time.LocalDate

data class AddressQuery(
    val street: String,
    val city: String,
    val province: String,
    val postalCode: String,
    val country: String,
)

data class EmergencyContactQuery(val name: String, val phone: String)

/** Mutable personal data only; account identity, permissions and certification are separate. */
data class PersonalProfileQuery(
    val firstName: String,
    val lastName: String,
    val phone: String,
    val address: AddressQuery,
    val emergencyContact: EmergencyContactQuery,
    val skillLevel: SkillLevel,
)

/** Acceptance time and accepting account are recorded by the application, not supplied here. */
data class LiabilityWaiverQuery(
    val accepted: Boolean,
    val legalGuardianName: String? = null,
)

data class OrganizerCertificationQuery(
    val certificateNumber: String,
    val issuedOn: LocalDate,
    val expiresOn: LocalDate,
    val maximumDifficulty: HikeDifficulty,
)
