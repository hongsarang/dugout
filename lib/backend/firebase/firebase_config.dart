import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAxIGU3cfV7aNO0O4zy63p8e5P0Kfec2TM",
            authDomain: "dugout-lpvt20.firebaseapp.com",
            projectId: "dugout-lpvt20",
            storageBucket: "dugout-lpvt20.appspot.com",
            messagingSenderId: "938738979755",
            appId: "1:938738979755:web:fdb87872cc97287f69f8ee"));
  } else {
    await Firebase.initializeApp();
  }
}
