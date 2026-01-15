import 'package:flutter/material.dart';
// Import halaman HomePage yang sudah kita buat di Step 2 & 3
import 'screens/home_page.dart';
import 'package:praktikumuiux_7020230082/screens/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Menghilangkan banner debug di pojok kanan atas
      debugShowCheckedModeBanner: false,
      title: 'E-Commerce Practice',

      // Pengaturan Tema Global (UX: Konsistensi Warna)
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white, // Latar belakang putih bersih
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      // Menentukan halaman utama yang muncul pertama kali
      home: SplashScreen(),
    );
  }
}
