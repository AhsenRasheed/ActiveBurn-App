import 'package:active_burn_app/views/nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Shapito',
      theme: ThemeData(
        primaryColor: const Color(0xFF6BEEEA),
        buttonColor: const Color(0xFF27D3CE),
        //elevatedButtonTheme: ElevatedButtonThemeData(style: ButtonStyle())
      ),
      home: const NavBar(),
    );
  }

  //for authentication after firebase functionality completion
  authenticate() async {
    if (FirebaseAuth.instance.currentUser != null) {
    } else {}
  }
}
