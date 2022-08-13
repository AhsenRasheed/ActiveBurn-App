import 'package:active_burn_app/authentication/sign_up.dart';
import 'package:active_burn_app/views/nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
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
      home:  signup(),
    );
  }

  //for authentication after firebase functionality completion
  authenticate() async {
    if (FirebaseAuth.instance.currentUser != null) {
    } else {}
  }
}
