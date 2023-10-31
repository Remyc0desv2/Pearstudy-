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
        return macos;
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

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyAT_2hH8kTPgWm168Dp5TTqsMXp9IJY_bo',
    appId: '1:1065895134646:web:eef40e91f3b44fe5e4ad17',
    messagingSenderId: '1065895134646',
    projectId: 'pearstudy-4eb39',
    authDomain: 'pearstudy-4eb39.firebaseapp.com',
    storageBucket: 'pearstudy-4eb39.appspot.com',
    measurementId: 'G-DTHJ2JZ4DN',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyB1wb6Ip8H-sNdb7M8wG7aEWETolZhmSCc',
    appId: '1:1065895134646:android:f6fa4f05abc09c68e4ad17',
    messagingSenderId: '1065895134646',
    projectId: 'pearstudy-4eb39',
    storageBucket: 'pearstudy-4eb39.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCBRcyOCrI-CvPdAse_B7UouW4AK7IOkdk',
    appId: '1:1065895134646:ios:396f16e09a39bbf3e4ad17',
    messagingSenderId: '1065895134646',
    projectId: 'pearstudy-4eb39',
    storageBucket: 'pearstudy-4eb39.appspot.com',
    iosBundleId: 'com.remonecarter.studysesh',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCBRcyOCrI-CvPdAse_B7UouW4AK7IOkdk',
    appId: '1:1065895134646:ios:57054152fd40cfb7e4ad17',
    messagingSenderId: '1065895134646',
    projectId: 'pearstudy-4eb39',
    storageBucket: 'pearstudy-4eb39.appspot.com',
    iosBundleId: 'com.example.studysesh.RunnerTests',
  );
}
