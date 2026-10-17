package application.usecases

import application.dtos.queries.BrowseHikesQuery
import application.dtos.responses.BrowseHikesResponse

/** UC01. Public read; authenticated skill matching uses the trusted current account. */
interface BrowseHikes {
    fun browseHikes(query: BrowseHikesQuery): BrowseHikesResponse
}
