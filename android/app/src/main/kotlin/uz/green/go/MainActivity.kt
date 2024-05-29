package uz.green.go

import androidx.annotation.NonNull
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugins.GeneratedPluginRegistrant
import com.yandex.mapkit.MapKitFactory

class MainActivity: FlutterActivity() {
  override fun configureFlutterEngine(@NonNull flutterEngine: FlutterEngine) {
    try {
      MapKitFactory.setApiKey("1698a4de-ca45-4685-b228-958a2aa349b1") 
    }
    catch(e: AssertionError) {
      //  
    }
    super.configureFlutterEngine(flutterEngine)
    
  }
}

