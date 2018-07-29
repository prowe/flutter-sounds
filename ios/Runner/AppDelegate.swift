import UIKit
import Flutter
import AudioToolbox

@UIApplicationMain
@objc class AppDelegate: FlutterAppDelegate {

  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?
  ) -> Bool {
    GeneratedPluginRegistrant.register(with: self)
    setupMethodChannel();
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }

  func setupMethodChannel() -> Void {
    let controller : FlutterViewController = window?.rootViewController as! FlutterViewController;
    let playSoundChannel = FlutterMethodChannel.init(name: "com.rowe.flutter_sounds/play",
                                                     binaryMessenger: controller);
    playSoundChannel.setMethodCallHandler(playNote);
  }

  func playNote(call: FlutterMethodCall, result: FlutterResult) -> Void {
    print("Playing note");
    
    var sequence:MusicSequence? = nil
    NewMusicSequence(&sequence)

    var track:MusicTrack? = nil
    MusicSequenceNewTrack(sequence!, &track)

    var time = MusicTimeStamp(1.0)
    for index:UInt8 in 60...72 {
      var note = MIDINoteMessage(channel: 0,
                                note: index,
                                velocity: 64,
                                releaseVelocity: 0,
                                duration: 1.0 )
      MusicTrackNewMIDINoteEvent(track!, time, &note)
      time += 1
    }

    var musicPlayer:MusicPlayer? = nil
    NewMusicPlayer(&musicPlayer)

    MusicPlayerSetSequence(musicPlayer!, sequence!)
    MusicPlayerStart(musicPlayer!)

    result(true);
  }
}
