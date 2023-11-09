import 'package:flutter/material.dart';

class PengajuanKeluar extends StatelessWidget {
  const PengajuanKeluar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN KELUAR",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}