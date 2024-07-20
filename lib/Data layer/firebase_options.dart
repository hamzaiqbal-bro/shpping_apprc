
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyBn9vDu7QHkaQMGaasRxtfC1sgb0OVS9yU',
    appId: '1:513019615583:web:ee4c03a939ef0ed4d4feea',
    messagingSenderId: '513019615583',
    projectId: 'shoppingapprc',
    authDomain: 'shoppingapprc.firebaseapp.com',
    storageBucket: 'shoppingapprc.appspot.com',
    measurementId: 'G-MP5SBP25QP',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyD69ayOv5gIsYZyNDJpewCykqcUG5ifPy4',
    appId: '1:513019615583:ios:268fdd8f44c272b1d4feea',
    messagingSenderId: '513019615583',
    projectId: 'shoppingapprc',
    storageBucket: 'shoppingapprc.appspot.com',
    iosBundleId: 'com.example.shoppingApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyD69ayOv5gIsYZyNDJpewCykqcUG5ifPy4',
    appId: '1:513019615583:ios:268fdd8f44c272b1d4feea',
    messagingSenderId: '513019615583',
    projectId: 'shoppingapprc',
    storageBucket: 'shoppingapprc.appspot.com',
    iosBundleId: 'com.example.shoppingApp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyBn9vDu7QHkaQMGaasRxtfC1sgb0OVS9yU',
    appId: '1:513019615583:web:f2e7caea78034921d4feea',
    messagingSenderId: '513019615583',
    projectId: 'shoppingapprc',
    authDomain: 'shoppingapprc.firebaseapp.com',
    storageBucket: 'shoppingapprc.appspot.com',
    measurementId: 'G-GZDJZDL3WK',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAeH2Fl7U2suHLpt77mlmKmV8AHTJUJ9Ec',
    appId: '1:513019615583:android:ec39f2ade621403cd4feea',
    messagingSenderId: '513019615583',
    projectId: 'shoppingapprc',
    storageBucket: 'shoppingapprc.appspot.com',
  );

}