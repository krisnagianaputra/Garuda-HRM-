import 'package:flutter/material.dart';

class PengajuanSP extends StatefulWidget {
  const PengajuanSP({super.key});

  @override
  State<PengajuanSP> createState() => _PengajuanSPState();
}

class _PengajuanSPState extends State<PengajuanSP> {
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