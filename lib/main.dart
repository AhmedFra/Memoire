import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter/services.dart';
import 'package:sheesh/Patient/homepage.dart';
// ignore: unused_import
import 'package:sheesh/screens/login_page.dart';
import 'package:sheesh/screens/onboarding_screens.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});  

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Patient(),
    );
  }
}

