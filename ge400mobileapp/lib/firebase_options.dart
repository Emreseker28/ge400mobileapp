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
      return web;
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
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyDwuzTN6NqbElJG3rcpJvYV30fHTfAZBxY',
    appId: '1:334067108952:web:01beb647def29caa008e2d',
    messagingSenderId: '334067108952',
    projectId: 'ge400-mobile-app',
    authDomain: 'ge400-mobile-app.firebaseapp.com',
    storageBucket: 'ge400-mobile-app.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXENVEpU53O4G4BivxA_KH2LS6xwOZbe0',
    appId: '1:334067108952:android:83eca36f437cc30a008e2d',
    messagingSenderId: '334067108952',
    projectId: 'ge400-mobile-app',
    storageBucket: 'ge400-mobile-app.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCdOle7JkcWyNRhJk2iQCM-V_GryTqO0B8',
    appId: '1:334067108952:ios:37ec1fd13f2463af008e2d',
    messagingSenderId: '334067108952',
    projectId: 'ge400-mobile-app',
    storageBucket: 'ge400-mobile-app.appspot.com',
    iosClientId: '334067108952-mg721aj2okqapsr89acokp7b5bejpi6m.apps.googleusercontent.com',
    iosBundleId: 'com.example.ge400mobileapp',
  );
}
