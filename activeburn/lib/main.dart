import 'package:active_burn_app/active_burn_splash.dart';
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
      title: 'Active Burn',
      theme: ThemeData(
        primaryColor: const Color(0xFF4DC1B5),
        bottomAppBarColor: Color(0xFF80EAE6),
        buttonColor: const Color(0xFF27D3CE),
        backgroundColor: Color.fromARGB(255, 88, 85, 85),
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
