// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {

  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      throw UnsupportedError(
        'DefaultFirebaseOptions have not been configured for web - '
        'you can reconfigure this by running the FlutterFire CLI again.',
      );
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUf7rwLOb2pA81aLG7Q42g9zuB9154Scg',
    appId: '1:567814377809:android:84af3f762f252960664370',
    messagingSenderId: '567814377809',
    projectId: 'tory-74c72',
    storageBucket: 'tory-74c72.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCzvjpD_MPU0gjbNlkeuYfGDrArPrHyVG8',
    appId: '1:567814377809:ios:3361cc288293f642664370',
    messagingSenderId: '567814377809',
    projectId: 'tory-74c72',
    storageBucket: 'tory-74c72.appspot.com',
    androidClientId: '567814377809-cvas1tnolrik7jhrvalvlf9br3vgd1hr.apps.googleusercontent.com',
    iosClientId: '567814377809-8mc8r6dol6bju8qfnl6f0alc5792njaf.apps.googleusercontent.com',
    iosBundleId: 'com.example.tory',
  );
}
