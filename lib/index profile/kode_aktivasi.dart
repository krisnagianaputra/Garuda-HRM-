import 'package:attendance_app/pages/qr_code_scanner.dart';
import 'package:flutter/material.dart';

class KodeAktivasi extends StatefulWidget {
  const KodeAktivasi({super.key});

  @override
  State<KodeAktivasi> createState() => _KodeAktivasiState();
}

class _KodeAktivasiState extends State<KodeAktivasi> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Column(
          children: [
            SizedBox(height: 400,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          QRCodeScanner()), // Pindah ke halaman detail
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 12, 53, 106), // Background color
                onPrimary: Colors.white, // Text color
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.circular(10), // Button border radius
                ),
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
              ),
              child: Text(
                'Klik Untuk Aktivasi',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
