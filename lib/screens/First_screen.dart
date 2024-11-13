import 'package:flutter/material.dart';
import 'package:technical_interview/screens/login.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => const LoginScreen()));
        },
        child: Container(
          color: Color(0xFF140034),
          child: Stack(
            children: [
              Center(child: Image.asset('assets/images/bg.png')),
              Padding(
                padding: const EdgeInsets.all(50),
                child: Center(
                    child: Image.asset(
                  'assets/images/logo.png',
                )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
