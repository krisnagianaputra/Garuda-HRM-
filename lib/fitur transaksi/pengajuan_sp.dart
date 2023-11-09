import 'package:flutter/material.dart';

class PengajuanSP extends StatelessWidget {
  const PengajuanSP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN SP",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}