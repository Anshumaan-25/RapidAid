import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyARD3gl-jsL-e64njPz1m5FVgfjK4IOuz4",
            authDomain: "rapidaid-e31cc.firebaseapp.com",
            projectId: "rapidaid-e31cc",
            storageBucket: "rapidaid-e31cc.firebasestorage.app",
            messagingSenderId: "97634801029",
            appId: "1:97634801029:web:4a2021fb44dfb476e3a0ec",
            measurementId: "G-PW3BTZPTCL"));
  } else {
    await Firebase.initializeApp();
  }
}
