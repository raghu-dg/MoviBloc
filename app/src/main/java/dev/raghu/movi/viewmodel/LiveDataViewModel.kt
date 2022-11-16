package dev.raghu.movi.viewmodel

import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import kotlinx.coroutines.Job
import kotlinx.coroutines.channels.Channel
import kotlinx.coroutines.delay
import kotlinx.coroutines.flow.MutableStateFlow
import kotlinx.coroutines.flow.asSharedFlow
import kotlinx.coroutines.flow.asStateFlow
import kotlinx.coroutines.launch
import java.util.*

class LiveDataViewModel : ViewModel() {

    private val initialValue = "Hello World!"

    private val _stringLiveData = MutableLiveData(initialValue)
    val stringLiveData get() = _stringLiveData

    private val _stringStateFlow = MutableStateFlow(initialValue)
    val stringStateFlow get() = _stringStateFlow.asStateFlow()


    val dataChannel = Channel<String>()

    suspend fun getData(){
        delay(2000)
        dataChannel.send("Hello world from channel!")
    }

    private var job: Job = viewModelScope.launch {
        while (true) {
            delay(5000)
            _stringStateFlow.emit(UUID.randomUUID().toString())
        }
    }
    override fun onCleared() {
        super.onCleared()
        job.cancel()
    }
}