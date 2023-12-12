import 'package:aktiv1/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatelessWidget{
  const Page1({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset('assets/img/space.jpg',
              width: double.infinity,
              height: 100,
              fit: BoxFit.cover,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  padding: const EdgeInsets.all(35),
                  child: TextButton(
                    onPressed: (){
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Page2()),
                      );
                    }, 
                    child: const Text('Day 1', style: TextStyle(fontSize: 25),)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  padding: const EdgeInsets.all(35),
                  child: TextButton(
                    onPressed: (){

                    }, 
                    child: const Text('Day 2', style: TextStyle(fontSize: 25),)
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  padding: const EdgeInsets.all(35),
                  child: TextButton(
                    onPressed: (){
                      
                    }, 
                    child: const Text('Day 3', style: TextStyle(fontSize: 25),)
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 30),
                  padding: const EdgeInsets.all(35),
                  child: TextButton(
                    onPressed: (){

                    }, 
                    child: const Text('Day 4', style: TextStyle(fontSize: 25),)
                  ),
                ),
              ],
            )
          ],
        )
      ),
    );
  }
}