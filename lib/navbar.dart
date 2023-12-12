import 'package:aktiv1/page1.dart';
import 'package:aktiv1/page2.dart';
import 'package:flutter/material.dart';
import 'package:aktiv1/page3.dart';


class Navbar extends StatefulWidget{
  const Navbar({super.key});

  @override
  State<Navbar> createState() => NavbarState();
}

class NavbarState extends State<Navbar>{
  int selectPage = 0;

  List<Widget> pageList = [
    const Page1(),
    const Page2(),
    const Page3()
  ];

  void movePage(int index){
    setState(() {
      selectPage = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: pageList[selectPage],
      bottomNavigationBar: BottomNavigationBar(
        onTap: movePage,
        currentIndex: selectPage,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: "Day"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.hotel_class),
            label: "Item"
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.rowing),
            label: "Profil"
          )
        ],
      ),
    );
  }
}