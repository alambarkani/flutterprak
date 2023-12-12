import 'package:aktiv1/splashscreen2.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


class FormDaftar extends StatefulWidget {
  const FormDaftar({super.key});

  @override
  _FormDaftarState createState() => _FormDaftarState();
}

class _FormDaftarState extends State<FormDaftar> {
  final TextEditingController namaController = TextEditingController();
  final TextEditingController nbiController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController alamatController = TextEditingController();
  final TextEditingController akunController = TextEditingController();

  void _registerUser() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();

    String nama = namaController.text;
    String nbi = nbiController.text;
    String email = emailController.text;
    String alamat = alamatController.text;
    String akun = akunController.text;

    await prefs.setString('nama', nama);
    await prefs.setString('nbi', nbi);
    await prefs.setString('email', email);
    await prefs.setString('alamat', alamat);
    await prefs.setString('akun', akun);

    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => SplashScreen2()));

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registration Form'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/img/foto.png", scale: 5,),
            TextField(
              controller: namaController,
              decoration: InputDecoration(labelText: 'Masukkan Nama'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: nbiController,
              decoration: InputDecoration(labelText: 'Masukkan NBI'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Masukkan Email'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: alamatController,
              decoration: InputDecoration(labelText: 'Masukkan Alamat'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: akunController,
              decoration: InputDecoration(labelText: 'Masukkan Akun Instagram'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _registerUser,
              child: Text('Daftar'),
            ),
          ],
        ),
      ),
    );
  }
}
