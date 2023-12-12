import 'package:aktiv1/home.dart';
import 'package:flutter/material.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({super.key});

  @override
  _SplashScreen2State createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    Future.delayed(Duration(seconds: 3), () async {
      Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (builde) => MyHomePage()));
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
          "assets/img/spl2.png",
          scale: 5,
        )),
      ),
    );
  }
}
