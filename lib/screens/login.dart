import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController phoneNumberController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color(0xFF140034),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 60,
                ),
                const Text(
                  "Login",
                  style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                const SizedBox(height: 8),
                const Text(
                  "Please enter your valid phone number",
                  style: TextStyle(color: Colors.white),
                ),
                const SizedBox(height: 16),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: const GradientBoxBorder(
                      gradient:
                          LinearGradient(colors: [Colors.blue, Colors.pink]),
                      width: 4,
                    ),
                  ),
                  child: Row(
                    children: [
                      DropdownButton<String>(
                        focusColor: Colors.white,
                        items: const [
                          DropdownMenuItem(value: '+94', child: Text('+1')),
                          DropdownMenuItem(value: '+4', child: Text('+4')),
                        ],
                        onChanged: (value) {},
                        hint: const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text('+1'),
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          controller: phoneNumberController,
                          decoration: const InputDecoration(
                            hintText: '+94 755049713',
                            border: InputBorder.none,
                            contentPadding: EdgeInsets.all(16),
                          ),
                          keyboardType: TextInputType.phone,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 16),
                Container(
                  width: 200,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text("Submit"),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      padding: const EdgeInsets.symmetric(vertical: 16),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 20,
                      color: Colors.pink,
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8.0),
                      child: Text(
                        "OR",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Container(
                      height: 5,
                      width: 20,
                      color: Colors.pink,
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text("Login Using"),
                const SizedBox(height: 16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Facebook_f_logo_%282019%29.svg/800px-Facebook_f_logo_%282019%29.svg.png",
                      height: 40,
                      width: 40,
                    ),
                    const SizedBox(width: 16),
                    Image.network(
                      "https://upload.wikimedia.org/wikipedia/commons/thumb/5/51/Google_G_Logo.svg/800px-Google_G_Logo.svg.png",
                      height: 40,
                      width: 40,
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
