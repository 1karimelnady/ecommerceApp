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
    apiKey: 'AIzaSyBACRL0HjBWwJp3ip9EfgtTPyyAOMbWDH0',
    appId: '1:116655316735:web:10711dc5008b228b1d36ca',
    messagingSenderId: '116655316735',
    projectId: 'flutter-project-4f196',
    authDomain: 'flutter-project-4f196.firebaseapp.com',
    storageBucket: 'flutter-project-4f196.appspot.com',
    measurementId: 'G-XJN7SH0N2D',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyC8Z5NT5DodswpORuO189ePyVWmK13I0ps',
    appId: '1:116655316735:android:fd678c6aa2b528f11d36ca',
    messagingSenderId: '116655316735',
    projectId: 'flutter-project-4f196',
    storageBucket: 'flutter-project-4f196.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB9azlG0jvTBcjR9Q_jRP16NAor7f-5cmQ',
    appId: '1:116655316735:ios:260d58bfea612fc41d36ca',
    messagingSenderId: '116655316735',
    projectId: 'flutter-project-4f196',
    storageBucket: 'flutter-project-4f196.appspot.com',
    androidClientId: '116655316735-3rqqbrs63o167gb61crmgsej3mf7egvo.apps.googleusercontent.com',
    iosClientId: '116655316735-iosjeekcmgsvn85nfanshtm53bcmlnb9.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB9azlG0jvTBcjR9Q_jRP16NAor7f-5cmQ',
    appId: '1:116655316735:ios:260d58bfea612fc41d36ca',
    messagingSenderId: '116655316735',
    projectId: 'flutter-project-4f196',
    storageBucket: 'flutter-project-4f196.appspot.com',
    androidClientId: '116655316735-3rqqbrs63o167gb61crmgsej3mf7egvo.apps.googleusercontent.com',
    iosClientId: '116655316735-iosjeekcmgsvn85nfanshtm53bcmlnb9.apps.googleusercontent.com',
    iosBundleId: 'com.example.ecommerceApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBACRL0HjBWwJp3ip9EfgtTPyyAOMbWDH0',
    appId: '1:116655316735:web:c18c0bd13f6c20c21d36ca',
    messagingSenderId: '116655316735',
    projectId: 'flutter-project-4f196',
    authDomain: 'flutter-project-4f196.firebaseapp.com',
    storageBucket: 'flutter-project-4f196.appspot.com',
    measurementId: 'G-DZWJ3V4FFS',
  );
}