import 'package:flutter/material.dart';
import 'package:sep7a_app/components/rounded_button.dart';
import 'package:sep7a_app/screens/login_screen.dart';

String? userEmail;

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  static String id = 'welcome_screen';

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Center(
              child: Text(
                'Sep7a',
                style: TextStyle(
                    shadows: [
                      Shadow(
                        color: Colors.black38,
                        blurRadius: 10.0,
                        offset: Offset(2.0, 2.0),
                      )
                    ],
                    fontWeight: FontWeight.bold,
                    fontSize: 50.0,
                    color: Colors.blueAccent),
              ),
            ),
            const SizedBox(
              height: 30.0,
            ),
            RoundedButton(
              text: 'Start',
              color: Colors.blueAccent,
              onPressed: () {
                Navigator.pushNamed(context, LogInScreen.id);
              },
            ),
          ],
        ),
      ),
    );
  }
}
