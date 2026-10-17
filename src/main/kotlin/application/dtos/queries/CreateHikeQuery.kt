package application.dtos.queries

import java.time.OffsetDateTime

/** Organizer, trail difficulty and trail starting point are resolved from trusted records. */
data class CreateHikeQuery(
    val title: String,
    val description: String,
    val trailId: String,
    val startsAt: OffsetDateTime,
    val expectedDurationMinutes: Long,
    val registrationDeadline: OffsetDateTime,
    val capacity: Int,
)
