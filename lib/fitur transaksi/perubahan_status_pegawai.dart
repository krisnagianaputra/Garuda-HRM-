import 'package:flutter/material.dart';

class PerubahanStatusPegawai extends StatefulWidget {
  const PerubahanStatusPegawai({super.key});

  @override
  State<PerubahanStatusPegawai> createState() => _PerubahanStatusPegawaiState();
}

class _PerubahanStatusPegawaiState extends State<PerubahanStatusPegawai> {
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