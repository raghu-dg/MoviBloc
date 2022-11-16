package dev.raghu.movi

import android.os.Bundle
import androidx.activity.ComponentActivity
import androidx.activity.compose.setContent
import androidx.activity.viewModels
import androidx.compose.foundation.layout.fillMaxSize
import androidx.compose.material.MaterialTheme
import androidx.compose.material.Surface
import androidx.compose.material.Text
import androidx.compose.runtime.Composable
import androidx.compose.runtime.livedata.observeAsState
import androidx.compose.ui.Modifier
import androidx.compose.ui.tooling.preview.Preview
import androidx.lifecycle.Lifecycle
import androidx.lifecycle.lifecycleScope
import androidx.lifecycle.repeatOnLifecycle
import dev.raghu.movi.ui.theme.MoviTheme
import dev.raghu.movi.viewmodel.LiveDataViewModel
import kotlinx.coroutines.flow.collectLatest
import kotlinx.coroutines.launch

class MainActivity : ComponentActivity() {

    private val viewModel: LiveDataViewModel by viewModels()

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        lifecycleScope.launch {
            repeatOnLifecycle(Lifecycle.State.CREATED) {
                viewModel.stringStateFlow.collectLatest {
                    setContent {
                        MoviTheme {
                            Surface(
                                modifier = Modifier.fillMaxSize(),
                                color = MaterialTheme.colors.background
                            ) {
                                Greeting(it)
                            }
                        }
                    }
                }

            }
        }
    }
}

@Composable
fun Greeting(name: String) {
    Text(text = name)
}

@Preview(showBackground = true)
@Composable
fun DefaultPreview() {
    MoviTheme {
        Greeting("Android")
    }
}