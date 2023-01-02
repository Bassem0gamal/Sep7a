import 'package:flutter/material.dart';
import 'package:sep7a_app/screens/loading_screen.dart';
import 'package:sep7a_app/screens/welcome_screen.dart';
import 'package:sep7a_app/screens/login_screen.dart';
import 'package:sep7a_app/screens/home_screen.dart';
import 'package:sep7a_app/test/test_2.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: LoadingScreen.id,
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        LogInScreen.id: (context) => const LogInScreen(),
        HomeScreen.id: (context) => const HomeScreen(),
        LoadingScreen.id: (context) => const LoadingScreen(),
        Text2.id: (context) => const Text2(),

      },
    );
  }
}
