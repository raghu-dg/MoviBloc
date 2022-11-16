package dev.raghu.movi

import kotlinx.coroutines.*
import kotlin.coroutines.CoroutineContext

class UseCase {

    private val context = Job() + Dispatchers.Main
    private val exceptionHandler = CoroutineExceptionHandler { coroutineContext, exception ->
        println(exception.message)
    }
    private val scope = CoroutineScope(context + exceptionHandler)

    fun fetchSomething(){
       scope.launch {

       }
        scope.async {  }
    }


    suspend fun someMethod(){
        coroutineScope {

        }
    }
}