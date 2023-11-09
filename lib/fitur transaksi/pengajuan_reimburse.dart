import 'package:flutter/material.dart';

class PengajuanReimburse extends StatelessWidget {
  const PengajuanReimburse({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN REIMBURSE",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}