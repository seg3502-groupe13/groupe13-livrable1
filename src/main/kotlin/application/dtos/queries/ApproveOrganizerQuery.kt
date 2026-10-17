package application.dtos.queries

data class ApproveOrganizerQuery(
    val hikerId: String,
    val certification: OrganizerCertificationQuery,
)
