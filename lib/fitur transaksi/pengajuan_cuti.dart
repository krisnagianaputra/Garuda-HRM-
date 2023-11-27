import 'package:flutter/material.dart';

class PengajuanCuti extends StatefulWidget {
  const PengajuanCuti({super.key});

  @override
  State<PengajuanCuti> createState() => _PengajuanCutiState();
}

class _PengajuanCutiState extends State<PengajuanCuti> {
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