import 'package:flutter/material.dart';

class PengajuanKeluar extends StatefulWidget {
  const PengajuanKeluar({super.key});

  @override
  State<PengajuanKeluar> createState() => _PengajuanKeluarState();
}

class _PengajuanKeluarState extends State<PengajuanKeluar> {
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