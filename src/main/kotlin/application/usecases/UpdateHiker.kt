package application.usecases

import application.dtos.queries.ApproveOrganizerQuery
import application.dtos.queries.UpdateHikerProfileQuery
import application.dtos.queries.UpdateMembershipStatusQuery

/** UC07. All authorization uses trusted session grants, never fields claimed in a request. */
interface UpdateHiker {
    /** The owner may replace mutable personal fields; identity and privileges are excluded. */
    fun updateHikerProfile(query: UpdateHikerProfileQuery)

    /** Administrator only. */
    fun updateMembershipStatus(query: UpdateMembershipStatusQuery)

    /** Administrator only; records the certificate and highest authorized hike difficulty. */
    fun approveOrganizer(query: ApproveOrganizerQuery)
}
