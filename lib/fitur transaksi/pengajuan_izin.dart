import 'package:flutter/material.dart';

class PengajuanIzin extends StatelessWidget {
  const PengajuanIzin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN IZIN",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}