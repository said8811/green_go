package uz.green.go

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
  override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    try {
      MapKitFactory.setApiKey("57c24b9c-6ad1-4465-95fa-dc4e6b84558c") 
    }
    catch(e: AssertionError) {
      //  
    }
    super.configureFlutterEngine(flutterEngine)
    
  }
}

