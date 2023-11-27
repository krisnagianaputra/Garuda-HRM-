import 'package:flutter/material.dart';

class PengajuanPeralatan extends StatefulWidget {
  const PengajuanPeralatan({super.key});

  @override
  State<PengajuanPeralatan> createState() => _PengajuanPeralatanState();
}

class _PengajuanPeralatanState extends State<PengajuanPeralatan> {
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