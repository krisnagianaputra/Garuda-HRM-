import 'package:flutter/material.dart';

class PengajuanPeralatan extends StatelessWidget {
  const PengajuanPeralatan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN PERALATAN",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}