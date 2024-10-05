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
    apiKey: 'AIzaSyCAjqCB2BXBq6YoiR8zBfKQzMopm0rntQk',
    appId: '1:815153538775:web:91afc4b1f82a80a44af292',
    messagingSenderId: '815153538775',
    projectId: 'desh-e-com-app74',
    authDomain: 'desh-e-com-app74.firebaseapp.com',
    storageBucket: 'desh-e-com-app74.appspot.com',
    measurementId: 'G-5L7TBR6DCR',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAXncb8c5hMUxZSvM8z0dGQluRBLJTrW-8',
    appId: '1:815153538775:android:8bb48c5c127f035d4af292',
    messagingSenderId: '815153538775',
    projectId: 'desh-e-com-app74',
    storageBucket: 'desh-e-com-app74.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCcs2Ykl-iEiFvauRs58GRVfxqdby65PCA',
    appId: '1:815153538775:ios:44800c1208a6816c4af292',
    messagingSenderId: '815153538775',
    projectId: 'desh-e-com-app74',
    storageBucket: 'desh-e-com-app74.appspot.com',
    iosClientId: '815153538775-pdf8fkst2mua4a6j874j4jdm0cl7i86p.apps.googleusercontent.com',
    iosBundleId: 'com.deshengineeringbe.deshEngineeringAppBackend',
  );
}