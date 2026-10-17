package application.dtos.queries

/** Full replacement of the mutable personal fields for the authenticated hiker's account. */
data class UpdateHikerProfileQuery(val hikerId: String, val profile: PersonalProfileQuery)
