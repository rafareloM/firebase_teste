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
    apiKey: 'AIzaSyCA78SBW4euAHxjTbX3lDDS7uJM4WME_1w',
    appId: '1:280628716686:web:acc7de5166e72f4eb095df',
    messagingSenderId: '280628716686',
    projectId: 'fir-teste-73925',
    authDomain: 'fir-teste-73925.firebaseapp.com',
    storageBucket: 'fir-teste-73925.appspot.com',
    measurementId: 'G-DYG7361ZXT',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDhTbyhe9NCPDob0roGdfmM1BSTz8erdtM',
    appId: '1:280628716686:android:d8cc6b1be653c5d4b095df',
    messagingSenderId: '280628716686',
    projectId: 'fir-teste-73925',
    storageBucket: 'fir-teste-73925.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyANq38wbx6cJkmpJJFtb9IreI-9E1JGM-0',
    appId: '1:280628716686:ios:1b6b28159b557493b095df',
    messagingSenderId: '280628716686',
    projectId: 'fir-teste-73925',
    storageBucket: 'fir-teste-73925.appspot.com',
    iosClientId: '280628716686-g27jm8o1uqa7d88frk9ghc3pp9iro1ru.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseTeste',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyANq38wbx6cJkmpJJFtb9IreI-9E1JGM-0',
    appId: '1:280628716686:ios:1b6b28159b557493b095df',
    messagingSenderId: '280628716686',
    projectId: 'fir-teste-73925',
    storageBucket: 'fir-teste-73925.appspot.com',
    iosClientId: '280628716686-g27jm8o1uqa7d88frk9ghc3pp9iro1ru.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebaseTeste',
  );
}
