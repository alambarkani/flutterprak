import 'package:aktiv1/pin.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () async {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (builde) => Pin()));
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xFF5C1DAD)
        ),
        child: Center(
            child: Image.asset(
          "assets/img/splash.png",
          scale: 5,
        )),
      ),
    );
  }
}
