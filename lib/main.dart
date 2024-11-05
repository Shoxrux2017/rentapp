import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:rentapp/presentation/pages/car_list_screen.dart';
import 'package:rentapp/presentation/pages/onboarding_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
        apiKey: "AIzaSyBTtHOC-3b4AjnhA12VqUIKuP6lQbwP_CE",
        authDomain: "rentapp-59b36.firebaseapp.com",
        projectId: "rentapp-59b36",
        storageBucket: "rentapp-59b36.firebasestorage.app",
        messagingSenderId: "1082345133026",
        appId: "1:1082345133026:web:19cfd394a1093b59d9dfbb",
        measurementId: "G-BF706PXSF0",
      ),
    );
  } else {
    await Firebase.initializeApp();
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: CarListScreen(),
    );
  }
}
