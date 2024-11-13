import 'package:flutter/material.dart';
import 'package:technical_interview/screens/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyWidget(),
    );
  }
}

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
