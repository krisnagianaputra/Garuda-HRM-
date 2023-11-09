import 'package:attendance_app/detail%20riwayat%20absensi/detail_riwayat_absensi.dart';
import 'package:flutter/material.dart';

class RiwayatAbsensi extends StatelessWidget {
  const RiwayatAbsensi({Key? key}) : super(key: key);

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
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              width: 400,
              height: 300,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.vertical(top: Radius.circular(30)),
                boxShadow: [
                  BoxShadow(
                    color: const Color.fromARGB(255, 0, 0, 0)
                        .withOpacity(0.5), // warna shadow
                    spreadRadius: 3, // seberapa jauh shadow menyebar
                    blurRadius: 7, // seberapa buram shadow
                    offset: Offset(0, 3), // pergeseran shadow (x, y))
                  ),
                ],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(
                            35), // Adjust padding as needed
                        child: Image(
                          image: AssetImage("lib/images/pp.png"),
                          height: 100,
                        ),
                      ),
                      SizedBox(
                          width:
                              20), // Add some space between image and info columns
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Devi Ska',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '2133',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 5),
                          Text(
                            'Web Developer',
                            style: TextStyle(
                              fontSize: 14,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(
                      height: 20), // Add space between info and attendance rows
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hadir',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                          ),
                          Text(
                            '10',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                              color: Colors.lightGreen,
                            ),
                          ), // Replace this with the actual number
                        ],
                      ),
                      SizedBox(width: 20), // Add space between columns
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Izin',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                          ),
                          Text(
                            '2',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                              color: Colors.lightBlue,
                            ),
                          ), // Replace this with the actual number
                        ],
                      ),
                      SizedBox(width: 20), // Add space between columns
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Sakit',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                          ),
                          Text(
                            '5',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                              color: Colors.amber,
                            ),
                          ), // Replace this with the actual number
                        ],
                      ),
                      SizedBox(width: 20), // Add space between columns
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Absen',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.normal),
                          ),
                          Text(
                            '3',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w200,
                              color: Colors.red,
                            ),
                          ), // Replace this with the actual number
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DetailRiwayatAbsensi()),
                );
              },
              child: Text(
                'Detail Absensi',
                style: TextStyle(fontSize: 18, color: Colors.red),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                minimumSize: Size(
                    double.infinity, 50), // Lebar tombol mengikuti lebar layar
                padding:
                    EdgeInsets.symmetric(vertical: 15), // Padding dalam tombol
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(30),
                  ),
                ),
                elevation: 7,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
