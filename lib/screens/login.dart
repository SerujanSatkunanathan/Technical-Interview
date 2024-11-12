import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

const backgroundGradient = LinearGradient(
  begin: Alignment.topCenter,
  end: Alignment.bottomCenter,
  colors: [
    Color(0xFF140034),
    Color(0xFF01010D),
  ],
);

const buttonGradient = LinearGradient(
  colors: [
    Color(0xFFDD3562),
    Color(0xFF8354FF),
  ],
);

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: backgroundGradient,
        ),
        child: Align(
          alignment: Alignment.center,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Please enter your valid phone number.\nWe will send you a 4-digit code to verify',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextField(
                    decoration: InputDecoration(
                      border: GradientOutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                        gradient: buttonGradient,
                        width: 2,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 200,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: buttonGradient,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                    ),
                    child: const Text(
                      'Submit',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                const Row(
                  children: [
                    Expanded(child: Divider(color: Colors.white38)),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        'OR',
                        style: TextStyle(color: Colors.white38, fontSize: 30),
                      ),
                    ),
                    Expanded(child: Divider(color: Colors.white38)),
                  ],
                ),
                const SizedBox(height: 40),
                const Text(
                  'Login using',
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      icon:
                          const Icon(Icons.facebook, color: Color(0xFF4267B2)),
                      iconSize: 100,
                      onPressed: () {},
                    ),
                    const SizedBox(width: 30),
                    IconButton(
                      icon: const Icon(Icons.g_mobiledata,
                          color: Color(0xFFDB4437)),
                      iconSize: 100,
                      onPressed: () {},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
