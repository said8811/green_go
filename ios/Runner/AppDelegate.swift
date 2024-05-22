import UIKit
import Flutter
import YandexMapsMobile
import background_location_tracker

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    YMKMapKit.setApiKey("57c24b9c-6ad1-4465-95fa-dc4e6b84558c")
    GeneratedPluginRegistrant.register(with: self)
      BackgroundLocationTrackerPlugin.setPluginRegistrantCallback { registry in
            GeneratedPluginRegistrant.register(with: registry)
        }
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
