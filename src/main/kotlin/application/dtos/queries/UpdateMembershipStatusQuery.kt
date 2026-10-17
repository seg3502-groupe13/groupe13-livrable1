package application.dtos.queries

import domain.hikers.MembershipStatus

/** Updates a status supplied by club administration; membership processing is outside CAR-HMS. */
data class UpdateMembershipStatusQuery(val hikerId: String, val status: MembershipStatus)
