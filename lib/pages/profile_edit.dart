import 'package:attendance_app/navigation%20page/index_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_keyboard_visibility/flutter_keyboard_visibility.dart';
import 'package:url_launcher/url_launcher_string.dart';

// ignore: must_be_immutable
class ProfileEdit extends StatelessWidget {
  ProfileEdit({Key? key}) : super(key: key);

  bool isKeyboardVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:
            Size.fromHeight(70), // Set the desired height of the app bar
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 12, 53, 106),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Profil Karyawan',
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
              SizedBox(width: 20), // Add some spacing between text and logo
              Image(
                image: AssetImage("lib/images/garudahrm.png"),
                height: 20,
              )
            ],
          ), // Set the title and its color
          centerTitle: true,
        ),
      ),
      body: KeyboardVisibilityBuilder(
        builder: (context, isKeyboardVisible) {
          return SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 15),
                    child: Image(
                      image: AssetImage("lib/images/pp.png"),
                      height: 100,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "DeviSka@gmail.com",
                    style: TextStyle(
                        color: Color.fromARGB(255, 12, 53, 106),
                        fontSize: 25,
                        fontWeight: FontWeight.w900),
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: InkWell(
                            onTap: () {
                              launchUrlString("https://www.facebook.com/");
                            },
                            child: Column(
                              children: [
                                Container(
                                  child: Image(
                                    image:
                                        AssetImage("lib/images/sosmed/fb.png"),
                                    height: 40,
                                  ),
                                ),
                                SizedBox(
                                    height: 5), // Jarak antara gambar dan teks
                                Text(
                                  'Facebook', // Nama sosial media
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromARGB(255, 12, 53, 106)),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                child: Image(
                                  image:
                                      AssetImage("lib/images/sosmed/call.png"),
                                  height: 40,
                                ),
                              ),
                              SizedBox(
                                  height: 5), // Jarak antara gambar dan teks
                              Text(
                                'Call', // Nama sosial media
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 12, 53, 106)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                child: Image(
                                  image: AssetImage(
                                      "lib/images/sosmed/google.png"),
                                  height: 40,
                                ),
                              ),
                              SizedBox(
                                  height: 5), // Jarak antara gambar dan teks
                              Text(
                                'Google', // Nama sosial media
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 12, 53, 106)),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            children: [
                              Container(
                                child: Image(
                                  image: AssetImage("lib/images/sosmed/ig.png"),
                                  height: 40,
                                ),
                              ),
                              SizedBox(
                                  height: 5), // Jarak antara gambar dan teks
                              Text(
                                'Instagram', // Nama sosial media
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromARGB(255, 12, 53, 106)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Nama Perusahaan', // Nama sosial media
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 12, 53, 106),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: PhysicalModel(
                      elevation: 10, // Tinggi bayangan
                      color:
                          Color.fromARGB(255, 223, 237, 255), // Warna bayangan
                      borderRadius: BorderRadius.circular(25),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Nama Perusahaan",
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          prefix: Padding(
                            padding: EdgeInsets.only(
                                left:
                                    20), // Sesuaikan angka sesuai dengan jarak yang diinginkan
                            child: SizedBox(width: 10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Email', // Nama sosial media
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 12, 53, 106),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: PhysicalModel(
                      elevation: 10, // Tinggi bayangan
                      color:
                          Color.fromARGB(255, 223, 237, 255), // Warna bayangan
                      borderRadius: BorderRadius.circular(25),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Email",
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          prefix: Padding(
                            padding: EdgeInsets.only(
                                left:
                                    20), // Sesuaikan angka sesuai dengan jarak yang diinginkan
                            child: SizedBox(width: 10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Telepon', // Nama sosial media
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 12, 53, 106),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: PhysicalModel(
                      elevation: 10, // Tinggi bayangan
                      color:
                          Color.fromARGB(255, 223, 237, 255), // Warna bayangan
                      borderRadius: BorderRadius.circular(25),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Telepon",
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          prefix: Padding(
                            padding: EdgeInsets.only(
                                left:
                                    20), // Sesuaikan angka sesuai dengan jarak yang diinginkan
                            child: SizedBox(width: 10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    'Alamat', // Nama sosial media
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 12, 53, 106),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: PhysicalModel(
                      elevation: 10, // Tinggi bayangan
                      color:
                          Color.fromARGB(255, 223, 237, 255), // Warna bayangan
                      borderRadius: BorderRadius.circular(25),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Masukkan Alamat",
                          contentPadding: EdgeInsets.symmetric(vertical: 15),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                          prefix: Padding(
                            padding: EdgeInsets.only(
                                left:
                                    20), // Sesuaikan angka sesuai dengan jarak yang diinginkan
                            child: SizedBox(width: 10),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20,),
                  Padding(
                    padding: EdgeInsets.all(20),
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  IndexProfile()), // Pindah ke halaman detail
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color.fromARGB(255, 12, 53, 106),
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10), // Button border radius
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 130, vertical: 15),
                      ),
                      child: Text(
                        'Kirim',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
