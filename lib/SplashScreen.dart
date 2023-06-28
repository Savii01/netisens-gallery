import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(

      backgroundColor: Colors.black,
      body: Center(child: Text("This is the start of your application, and this is suppose to be the splash screen")),

      body: Center
        (child: Text(
          "Welcome to Netisens Gallery",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
      ),
      ),
    );
  }
}
