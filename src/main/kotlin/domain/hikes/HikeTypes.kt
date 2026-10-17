package domain.hikes

/** Ordered correspondence: beginner/easy, intermediate/moderate, advanced/hard, expert/very hard. */
enum class HikeDifficulty { EASY, MODERATE, HARD, VERY_HARD }

/** COMPLETED is derived at the start instant; physical attendance is outside the system. */
enum class HikeStatus { OPEN, FULL, CLOSED, CANCELLED, COMPLETED }
