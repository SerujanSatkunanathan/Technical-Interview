import 'dart:async';

import 'package:flutter/material.dart';
import 'package:technical_interview/screens/login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Timer(
        const Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (BuildContext context) => const LoginScreen())));
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF140034),
              Color(0xFF01010D),
            ],
          ),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Image.asset(
            "assets/images/logo.png",
            width: 300,
            height: 300,
          ),
        ),
      ),
    );
  }
}
