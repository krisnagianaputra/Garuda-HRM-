import 'package:flutter/material.dart';

class PengajuanReimburse extends StatefulWidget {
  const PengajuanReimburse({super.key});

  @override
  State<PengajuanReimburse> createState() => _PengajuanReimburseState();
}

class _PengajuanReimburseState extends State<PengajuanReimburse> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN REIMBURSE",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}