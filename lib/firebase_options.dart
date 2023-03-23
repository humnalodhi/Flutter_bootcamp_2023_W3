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
    apiKey: 'AIzaSyAudWcEV1fvC2UYOrWwp_1Ub6mwZIYV4Pg',
    appId: '1:205108573197:android:8de630d3ad65db30741144',
    messagingSenderId: '205108573197',
    projectId: 'flutter-bootcamp-2023-w3',
    storageBucket: 'flutter-bootcamp-2023-w3.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyBIUQ19f4oDqpBtqjkH6LFkXAgQ1_DCMC8',
    appId: '1:205108573197:ios:d914940d6d8698e7741144',
    messagingSenderId: '205108573197',
    projectId: 'flutter-bootcamp-2023-w3',
    storageBucket: 'flutter-bootcamp-2023-w3.appspot.com',
    iosClientId: '205108573197-1b102chcp1uvkodmnfdv7mj2dbl4ni9j.apps.googleusercontent.com',
    iosBundleId: 'com.example.flutterBootcamp2023W3',
  );
}
