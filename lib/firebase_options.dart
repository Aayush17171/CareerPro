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
    apiKey: 'AIzaSyBZqPcOTZMetTOW5kVUxT0Z2Amf9XTdP3Q',
    appId: '1:235930776421:web:3ec2e39393515fa49ae78c',
    messagingSenderId: '235930776421',
    projectId: 'realflutter-bd749',
    authDomain: 'realflutter-bd749.firebaseapp.com',
    databaseURL: 'https://realflutter-bd749-default-rtdb.firebaseio.com',
    storageBucket: 'realflutter-bd749.appspot.com',
    measurementId: 'G-86RE784762',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAAowRH6V8z4Dm69zWArp0Xmq6cmM4uEfQ',
    appId: '1:235930776421:android:0df8b446467c6be39ae78c',
    messagingSenderId: '235930776421',
    projectId: 'realflutter-bd749',
    databaseURL: 'https://realflutter-bd749-default-rtdb.firebaseio.com',
    storageBucket: 'realflutter-bd749.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA8sl76rgjM-d2TITrALKLzEmyRNiFhZUQ',
    appId: '1:235930776421:ios:b4b190f483fec1b99ae78c',
    messagingSenderId: '235930776421',
    projectId: 'realflutter-bd749',
    databaseURL: 'https://realflutter-bd749-default-rtdb.firebaseio.com',
    storageBucket: 'realflutter-bd749.appspot.com',
    iosBundleId: 'com.example.newtesting',
  );
}
