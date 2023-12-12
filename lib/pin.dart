import 'package:aktiv1/form.dart';
import 'package:flutter/material.dart';

class Pin extends StatefulWidget {
  const Pin({super.key});

  @override
  State<Pin> createState() => _PinState();
}

class _PinState extends State<Pin> {
  final TextEditingController pin = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Enter your PIN", style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold), textAlign: TextAlign.center),
            Text("Please enter your pin that you have created", textAlign: TextAlign.center),
            SizedBox(height: 40,),
            Icon(Icons.lock, color: Colors.red, size: 50,),
            SizedBox(height: 20,),
            TextField(
              controller: pin,
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(50),
                  borderSide: BorderSide(color: Colors.black, width: 50)
                ),
              ),
            ),
            SizedBox(height: 20,),
            Container(
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(500)
              ),
              child: ElevatedButton(
                onPressed: (){
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (builde) => FormDaftar()));
                },
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)), 
                child: Icon(Icons.lock, color: Colors.white,)
              ),
            )
          ],
        ),
      )
    );
  }
}