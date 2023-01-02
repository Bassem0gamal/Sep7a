import 'dart:async';
import 'package:flutter/material.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:sep7a_app/screens/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sep7a_app/screens/welcome_screen.dart';


String? userEmail;

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  static String id = 'loading_screen';

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  @override
  void initState() {
    super.initState();
    getUserName().whenComplete(() async {
      Timer(
          const Duration(milliseconds: 500),
              () => Navigator.pushNamed(
              context, userEmail == null ? WelcomeScreen.id : HomeScreen.id));
    });
  }

  Future getUserName() async {

    final SharedPreferences preferences = await SharedPreferences.getInstance();
    final userData = preferences.getString('login');
    HomeScreen.userName.value = userData;
    setState(() {
      userEmail = userData;
    });
  }







  bool showSpinner = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ModalProgressHUD(
        inAsyncCall: showSpinner,
        child: Container(
        ),
      ),
    );
  }
}
