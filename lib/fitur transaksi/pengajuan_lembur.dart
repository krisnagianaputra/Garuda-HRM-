import 'package:flutter/material.dart';

class PengajuanLembur extends StatelessWidget {
  const PengajuanLembur({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN LEMBUR",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}