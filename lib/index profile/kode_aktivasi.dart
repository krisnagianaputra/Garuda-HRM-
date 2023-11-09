import 'package:flutter/material.dart';

class KodeAktivasi extends StatelessWidget {
  const KodeAktivasi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 47, 255, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HALAMAN KODE AKTIVASI",
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