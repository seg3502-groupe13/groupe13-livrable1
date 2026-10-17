package application.dtos.queries

import domain.hikes.HikeDifficulty
import java.time.LocalDate

/** Optional filters; date is interpreted in America/Toronto. */
data class BrowseHikesQuery(
    val trailName: String? = null,
    val date: LocalDate? = null,
    val difficulty: HikeDifficulty? = null,
)
