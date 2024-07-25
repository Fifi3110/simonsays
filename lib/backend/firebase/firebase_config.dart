import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA322XQY2zC3h7DVMej71tY1_jFyUx7hBE",
            authDomain: "simonsays-b0101.firebaseapp.com",
            projectId: "simonsays-b0101",
            storageBucket: "simonsays-b0101.appspot.com",
            messagingSenderId: "58165935628",
            appId: "1:58165935628:web:ad268b2c2bbc07fe583829",
            measurementId: "G-FHXJQJVFB8"));
  } else {
    await Firebase.initializeApp();
  }
}
