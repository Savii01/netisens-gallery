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
      body: Center
        (child: Text(
          "Welcome to Netisens Gallery",
          style: TextStyle(
            color: Colors.orange,
            fontSize: 35,
            fontWeight: FontWeight.bold,
          ),
      )),
    );
  }
}
