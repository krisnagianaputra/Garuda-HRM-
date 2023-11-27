import 'package:flutter/material.dart';

class BoxRiwayatAbsensiHadir extends StatefulWidget {
  const BoxRiwayatAbsensiHadir({super.key});

  @override
  State<BoxRiwayatAbsensiHadir> createState() => _BoxRiwayatAbsensiHadirState();
}

class _BoxRiwayatAbsensiHadirState extends State<BoxRiwayatAbsensiHadir> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20, right: 30, left: 30),
      child: Column(
        children: [
          Container(
            width: 400,
            height: 115,
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 12, 53, 106),
              borderRadius: BorderRadius.all(Radius.circular(20)),
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
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15),
                      child: Icon(
                        Icons.lock_clock_rounded,
                        color: Color.fromARGB(255, 0, 123, 255),
                        size: 45,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Senin,", // Ganti dengan hari yang sesuai
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(
                                width:
                                    10), // Tambahkan spasi horizontal antara teks
                            Text(
                              "2 November 2023", // Ganti dengan tanggal, bulan, dan tahun yang sesuai
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Text(
                              "14:30", // Ganti dengan jam yang sesuai
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                    height:
                        2), // Tambahkan spasi vertikal antara teks dan tombol
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    SizedBox(
                      width: 70, // Mengatur lebar tombol
                      height: 25, // Mengatur tinggi tombol
                      child: ElevatedButton(
                        onPressed: () {
                          // Aksi ketika tombol "Hapus" ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              const Color.fromARGB(255, 254, 18, 18),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Hapus",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70, // Mengatur lebar tombol
                      height: 25, // Mengatur tinggi tombol
                      child: ElevatedButton(
                        onPressed: () {
                          // Aksi ketika tombol "Hadir" ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 78, 202, 34),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Hadir",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 70, // Mengatur lebar tombol
                      height: 25, // Mengatur tinggi tombol
                      child: ElevatedButton(
                        onPressed: () {
                          // Aksi ketika tombol "Rincian" ditekan
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 255, 180, 31),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                        ),
                        child: Text(
                          "Rincian",
                          style: TextStyle(fontSize: 12),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
