import 'package:flutter/material.dart';

class PengajuanDinas extends StatelessWidget {
  const PengajuanDinas({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN DINAS",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}