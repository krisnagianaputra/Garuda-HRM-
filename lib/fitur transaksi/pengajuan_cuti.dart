import 'package:flutter/material.dart';

class PengajuanCuti extends StatelessWidget {
  const PengajuanCuti({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN CUTI",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}