import 'package:flutter/material.dart';

class KartuPegawai extends StatelessWidget {
  const KartuPegawai({Key? key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          color: Color.fromARGB(255, 12, 53, 106),
          child: Padding(
            padding: const EdgeInsets.only(top: 40),
            child: Column(
              children: <Widget>[
                // Logo perusahaan di bawah App Bar
                Image.asset(
                  'lib/images/garudahrm.png', // Ganti dengan path logo perusahaan Anda
                  width: 100.0,
                  height: 100.0,
                ),
                Expanded(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 12, 53, 106),// Warna latar belakang
                    ),
                    child: Center(
                      child: Container(
                        height: 400,
                        width: 300,
                        padding: EdgeInsets.all(20.0),
                        margin: EdgeInsets.all(20.0),
                        decoration: BoxDecoration(
                          color: Colors.white, // Warna kontainer profil
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        child: const Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            // Keterangan profil
                            Text(
                              'Selamat Datang!',
                              style: TextStyle(
                                fontSize: 18.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            
                            SizedBox(height: 20),

                            Image(
                              image: AssetImage("lib/images/pp.png"),
                            ),

                            SizedBox(height: 20),

                            Text(
                              'Devi Ska',
                              // textAlign: TextAlign.center,
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),

                            SizedBox(height: 20),

                            Text(
                              "Web Developer",
                            ),

                            SizedBox(height: 20),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
