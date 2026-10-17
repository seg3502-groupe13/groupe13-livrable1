package application.dtos.queries

/** Internal scheduler command; current time is obtained from the application's clock. */
data class CloseHikeQuery(val hikeId: String)
