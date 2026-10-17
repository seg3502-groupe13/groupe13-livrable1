package application.usecases

import application.dtos.queries.SendHikeReminderQuery

/** UC09. Internal system command triggered one day before the hike, using the application's clock. */
interface SendHikeReminder {
    fun sendHikeReminder(query: SendHikeReminderQuery)
}
