import 'package:flutter/material.dart';
import 'package:netisens_gallery/home_page.dart';
import 'package:netisens_gallery/primary_onboarding.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override

  void initState(){
    super.initState();
    _navigatehome();
  }

  _navigatehome()async{
    await
    Future.delayed(Duration(milliseconds: 3000 ),(){});
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => PrimaryOnBoarding() ));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Color.fromRGBO(0x1B, 0x06, 0x36, 1),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('images/netisens_logo.png',),
            ),
          ],
        ),
      ),
    );
  }
}
