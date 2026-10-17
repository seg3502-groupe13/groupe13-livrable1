package application.usecases

import application.dtos.queries.RegisterHikerQuery

/** UC02. Public registration with a valid invitation supplied outside CAR-HMS; returns the account ID. */
interface RegisterHiker {
    fun registerHiker(query: RegisterHikerQuery): String
}
