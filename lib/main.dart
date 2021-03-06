import 'package:TimePass/Authentication/Login.dart';
import 'package:TimePass/Games/memory%20game/home.dart';
import 'package:TimePass/Screens/Splash.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'Screens/Navigation.dart';
import 'Screens/Navigation.dart';
import 'Screens/Navigation.dart';
import 'Screens/Splash.dart';
import 'Screens/Splash.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: splash(),
    );
  }
}
