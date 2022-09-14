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
    apiKey: 'AIzaSyATuYEmQiobbIhtnOIe7qre6WWHw8fNyDk',
    appId: '1:425501486623:web:90016173a11b4a92782f2a',
    messagingSenderId: '425501486623',
    projectId: 'fir-task-app-8a9cd',
    authDomain: 'fir-task-app-8a9cd.firebaseapp.com',
    storageBucket: 'fir-task-app-8a9cd.appspot.com',
    measurementId: 'G-HTKJG77BYH',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCaIxPEqnK27JCaHet97JWO1FRxiyScOyg',
    appId: '1:425501486623:android:ca7bb9a6be4bfedb782f2a',
    messagingSenderId: '425501486623',
    projectId: 'fir-task-app-8a9cd',
    storageBucket: 'fir-task-app-8a9cd.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB4NKbWTPW8cyX_1gnpQYaoFvLDoLK2Qyg',
    appId: '1:425501486623:ios:379364f8a7b6c0ce782f2a',
    messagingSenderId: '425501486623',
    projectId: 'fir-task-app-8a9cd',
    storageBucket: 'fir-task-app-8a9cd.appspot.com',
    iosClientId: '425501486623-a489286ocefuiekfpa6peq5u5k6r5tar.apps.googleusercontent.com',
    iosBundleId: 'com.example.myHomePage',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB4NKbWTPW8cyX_1gnpQYaoFvLDoLK2Qyg',
    appId: '1:425501486623:ios:379364f8a7b6c0ce782f2a',
    messagingSenderId: '425501486623',
    projectId: 'fir-task-app-8a9cd',
    storageBucket: 'fir-task-app-8a9cd.appspot.com',
    iosClientId: '425501486623-a489286ocefuiekfpa6peq5u5k6r5tar.apps.googleusercontent.com',
    iosBundleId: 'com.example.myHomePage',
  );
}
