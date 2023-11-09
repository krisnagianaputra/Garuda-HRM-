import 'package:attendance_app/detail%20riwayat%20absensi/detail_riwayat_absensi_box_absen.dart';
import 'package:attendance_app/detail%20riwayat%20absensi/detail_riwayat_absensi_box_hadir.dart';
import 'package:flutter/material.dart';

class DetailRiwayatAbsensi extends StatelessWidget {
  const DetailRiwayatAbsensi({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(100), // Set the desired height of the app bar
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 12, 53, 106),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20, right: 40),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image(
                    image: AssetImage("lib/images/garudahrm.png"),
                    height: 60,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
            child: Column(
              children: [
                SizedBox(height: 10),
                BoxRiwayatAbsensiHadir(),

                SizedBox(height: 10),

                BoxRiwayatAbsensiHadir(),

                SizedBox(height: 10),

                BoxRiwayatAbsensiAbsen(),
                SizedBox(height: 10),
                BoxRiwayatAbsensiHadir(),

                SizedBox(height: 10),

                BoxRiwayatAbsensiAbsen(),

                SizedBox(height: 10),

                BoxRiwayatAbsensiHadir(),
                SizedBox(height: 10),
                BoxRiwayatAbsensiAbsen(),

                SizedBox(height: 10),

                BoxRiwayatAbsensiHadir(),

                SizedBox(height: 10),

                BoxRiwayatAbsensiAbsen(),
              ],
            ),
          ),
      ),
    );
  }
}
