import 'package:flutter/material.dart';

class PengajuanDinas extends StatefulWidget {
  const PengajuanDinas({super.key});

  @override
  State<PengajuanDinas> createState() => _PengajuanDinasState();
}

class _PengajuanDinasState extends State<PengajuanDinas> {
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