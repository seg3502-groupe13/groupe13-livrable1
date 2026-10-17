package application.dtos.responses

import domain.hikes.HikeDifficulty
import domain.hikes.HikeStatus
import java.time.Instant

/** Public view: contains no organizer contact details, address or date of birth. */
data class PublicHikeResponse(
    val hikeId: String,
    val title: String,
    val description: String,
    val trailId: String,
    val trailName: String,
    val difficulty: HikeDifficulty,
    val startsAt: Instant,
    val expectedDurationMinutes: Long,
    val registrationDeadline: Instant,
    val capacity: Int,
    val remainingPlaces: Int,
    val status: HikeStatus,
    val organizerDisplayName: String,
    val startingPoint: String,
    val matchesMySkill: Boolean?,
)

data class BrowseHikesResponse(val hikes: List<PublicHikeResponse>)
