// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return macos;
      case TargetPlatform.windows:
        return windows;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCIp5EfcRPmM3HWwBf4lUe774QOin8DypA',
    appId: '1:358211118900:web:74e250d5e6d6bb8d67a761',
    messagingSenderId: '358211118900',
    projectId: 'spotify-app-1842a',
    authDomain: 'spotify-app-1842a.firebaseapp.com',
    storageBucket: 'spotify-app-1842a.appspot.com',
    measurementId: 'G-P1X5KQND1N',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB5-NU1tWitQSNwJhTrqy7VoZ5ak9ZTkLo',
    appId: '1:358211118900:android:3c3b227ab62e429f67a761',
    messagingSenderId: '358211118900',
    projectId: 'spotify-app-1842a',
    storageBucket: 'spotify-app-1842a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCGQMKnxh-qs7i-EZ3vhV_buY74Y0YMJBg',
    appId: '1:358211118900:ios:5df9f223f3d6329267a761',
    messagingSenderId: '358211118900',
    projectId: 'spotify-app-1842a',
    storageBucket: 'spotify-app-1842a.appspot.com',
    iosBundleId: 'com.example.spotifyApp2',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCGQMKnxh-qs7i-EZ3vhV_buY74Y0YMJBg',
    appId: '1:358211118900:ios:5df9f223f3d6329267a761',
    messagingSenderId: '358211118900',
    projectId: 'spotify-app-1842a',
    storageBucket: 'spotify-app-1842a.appspot.com',
    iosBundleId: 'com.example.spotifyApp2',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyCIp5EfcRPmM3HWwBf4lUe774QOin8DypA',
    appId: '1:358211118900:web:6624d2281379607267a761',
    messagingSenderId: '358211118900',
    projectId: 'spotify-app-1842a',
    authDomain: 'spotify-app-1842a.firebaseapp.com',
    storageBucket: 'spotify-app-1842a.appspot.com',
    measurementId: 'G-Y0WBXKPHDF',
  );
}