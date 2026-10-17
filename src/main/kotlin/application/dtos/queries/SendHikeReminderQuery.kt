package application.dtos.queries

/** Internal scheduler command; recipients are determined from stored confirmed registrations. */
data class SendHikeReminderQuery(val hikeId: String)
