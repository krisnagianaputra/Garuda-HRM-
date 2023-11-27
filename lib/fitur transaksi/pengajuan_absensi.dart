import 'package:flutter/material.dart';

class PengajuanAbsensi extends StatefulWidget {
  const PengajuanAbsensi({super.key});

  @override
  State<PengajuanAbsensi> createState() => _PengajuanAbsensiState();
}

class _PengajuanAbsensiState extends State<PengajuanAbsensi> {
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