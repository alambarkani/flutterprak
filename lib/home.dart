import 'package:aktiv1/navbar.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  String? nama;
  String? nbi;

  void data() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? _nama = prefs.getString('nama');
    final String? _nbi = prefs.getString('nbi');

    setState(() {
      nama = _nama;
      nbi = _nbi;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
              'Welcome to',
                style: TextStyle(
                  fontWeight : FontWeight.bold,
                  fontSize: 25.0
                )
              ),
              const Text(
                'PRAKTIKUM PAB 2023',
                style: TextStyle(
                  fontSize: 25.0
                ),
              ),
              Container(
              margin: const EdgeInsets.only(top: 30.0),
                child: Text(
                  "$nbi",
                  style: TextStyle(
                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 10.0),
                width: 300,
                height: 300,
                child: Image.asset('assets/img/seabear.png'),
              ),
              Container(
                margin: const EdgeInsets.only(bottom: 50.0),
                child: Text(
                  '$nama',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 25.0
                    ),
                ),
              ),
              SizedBox(
                width: 150,
                child: ElevatedButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Navbar()),
                      );
                    },
                    style: const ButtonStyle(backgroundColor: MaterialStatePropertyAll<Color>(Colors.greenAccent)),
                    child: const Text('Masuk')
                  )
              )
            ],
          )
        ),
    );
  }
}
