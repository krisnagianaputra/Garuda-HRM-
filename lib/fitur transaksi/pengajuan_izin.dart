import 'package:flutter/material.dart';

class PengajuanIzin extends StatefulWidget {
  const PengajuanIzin({super.key});

  @override
  State<PengajuanIzin> createState() => _PengajuanIzinState();
}

class _PengajuanIzinState extends State<PengajuanIzin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN IZIN",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}