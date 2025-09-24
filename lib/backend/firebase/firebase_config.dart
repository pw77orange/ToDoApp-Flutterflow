import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBpqRAN9iHrtKxHxftqHHeIavpqQ4aH5PY",
            authDomain: "todo-app-cwkd41.firebaseapp.com",
            projectId: "todo-app-cwkd41",
            storageBucket: "todo-app-cwkd41.firebasestorage.app",
            messagingSenderId: "229934911834",
            appId: "1:229934911834:web:dafbb332eb7ceb5625a363"));
  } else {
    await Firebase.initializeApp();
  }
}
