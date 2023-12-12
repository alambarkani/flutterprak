import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  State<Page3> createState() => _Page3();
}
class _Page3 extends State<Page3>{

  String? nama;
  String? nbi;
  String? email;
  String? alamat;
  String? akun;

  void data() async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? _nama = prefs.getString('nama');
    final String? _nbi = prefs.getString('nbi');
    final String? _email = prefs.getString('email');
    final String? _alamat = prefs.getString('alamat');
    final String? _akun = prefs.getString('akun');

    setState(() {
      nama = _nama;
      nbi = _nbi;
      email = _email;
      alamat = _alamat;
      akun = _akun;
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
      backgroundColor: Colors.grey[200], // Set a background color for the page
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("assets/img/R.jpg"),
            ),
            SizedBox(height: 20),
            ListTile(
              title: Text("Nama: $nama"),
            ),
            ListTile(
              title: Text("NBI: $nbi"),
            ),
            ListTile(
              title: Text("Kelas: E - 4"),
            ),
            ListTile(
              title: Text("Alamat: $alamat"),
            ),
            ListTile(
              title: Text("IG: $akun"),
            ),
          ],
        ),
      ),
    );
  }
  
}