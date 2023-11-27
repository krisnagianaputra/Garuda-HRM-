import 'package:flutter/material.dart';

class PengajuanLembur extends StatefulWidget {
  const PengajuanLembur({super.key});

  @override
  State<PengajuanLembur> createState() => _PengajuanLemburState();
}

class _PengajuanLemburState extends State<PengajuanLembur> {
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