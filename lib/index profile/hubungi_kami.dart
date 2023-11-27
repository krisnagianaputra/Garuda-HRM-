import 'package:flutter/material.dart';

class HubungiKami extends StatefulWidget {
  const HubungiKami({super.key});

  @override
  State<HubungiKami> createState() => _HubungiKamiState();
}

class _HubungiKamiState extends State<HubungiKami> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 255, 0, 0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "HALAMAN HUBUNGI KAMI",
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