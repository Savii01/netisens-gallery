import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:netisens_gallery/home.dart';
=======
import 'package:netisens_gallery/home_page.dart';
import 'package:netisens_gallery/primary_onboarding.dart';
>>>>>>> 35e71d4ae92816e426743dba9ddc2fddc1d8b544

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
<<<<<<< HEAD
        context, MaterialPageRoute(builder: (context) => DummyPage(title: "",) ));
=======
        context, MaterialPageRoute(builder: (context) => PrimaryOnBoarding() ));
>>>>>>> 35e71d4ae92816e426743dba9ddc2fddc1d8b544
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
<<<<<<< HEAD
        backgroundColor: Color.fromRGBO(0x1B, 0x06, 0x36, 1),

        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Center(
                child: Image.asset('images/netisens_logo.png',),
                ),
            ],
=======
      backgroundColor: Color.fromRGBO(0x1B, 0x06, 0x36, 1),

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset('images/netisens_logo.png',),
            ),
          ],
>>>>>>> 35e71d4ae92816e426743dba9ddc2fddc1d8b544
        ),
      ),
    );
  }
}
