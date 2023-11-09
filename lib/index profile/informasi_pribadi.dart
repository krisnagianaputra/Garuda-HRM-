import 'package:flutter/material.dart';

class InformasiPribadi extends StatelessWidget {
  const InformasiPribadi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 30, 0, 255),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HALAMAN INFORMASI PRIBADI",
                style: TextStyle(fontSize: 40),
              ),
              SizedBox(height: 20), // Tambahkan jarak antara teks dan tombol
            ],
          ),
        ),
      ),
    );
  }
}