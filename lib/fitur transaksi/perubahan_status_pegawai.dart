import 'package:flutter/material.dart';

class PerubahanStatusPegawai extends StatelessWidget {
  const PerubahanStatusPegawai({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "PENGAJUAN STATUS PEGAWAI",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}