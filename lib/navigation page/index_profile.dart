import 'dart:convert';
import 'package:attendance_app/api_service.dart';
import 'package:attendance_app/index%20profile/hubungi_kami.dart';
import 'package:attendance_app/index%20profile/informasi_pribadi.dart';
import 'package:attendance_app/index%20profile/kode_aktivasi.dart';
import 'package:attendance_app/index%20profile/tentang_aplikasi.dart';
import 'package:attendance_app/models/login-response.dart';
import 'package:attendance_app/pages/kartu_pegawai.dart';
import 'package:attendance_app/pages/profile_edit.dart';
import 'package:attendance_app/pages/qr_code_scanner.dart';
import 'package:attendance_app/pages/riwayat_absensi.dart';
import 'package:attendance_app/wellcome_page.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<User> fetchUser() async {
  String token = await ApiService.getToken() as String;
  final response = await http.get(Uri.parse('https://hrm.garudatechnusantara.com/api/auth/profile'), 
    headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization' : 'Bearer ' + token,
      },
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.body);
    return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load User');
  }
}

class IndexProfile extends StatefulWidget {
  const IndexProfile({super.key});

  @override
  State<IndexProfile> createState() => _IndexProfileState();
}

class _IndexProfileState extends State<IndexProfile> {
  
  late Future<User> futureUser;


  @override
  void initState() {
    super.initState();
    futureUser = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80),
        child: AppBar(
          backgroundColor: Color.fromARGB(255, 12, 53, 106),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(12),
              bottomRight: Radius.circular(12),
            ),
          ),
          title: Padding(
            padding: const EdgeInsets.only(top: 20, right: 50),
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
        child: Padding(
          padding: const EdgeInsets.only(top: 20, right: 35, left: 35),
          child: Column(
            children: [
              Container(
                width: 400,
                height: 250,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  boxShadow: [
                    BoxShadow(
                      color: const Color.fromARGB(255, 0, 0, 0)
                          .withOpacity(0.5), // warna shadow
                      spreadRadius: 2, // seberapa jauh shadow menyebar
                      blurRadius: 8, // seberapa buram shadow
                      offset: Offset(0, 4), // pergeseran shadow (x, y))
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 15),
                      child: Image(
                        image: AssetImage("lib/images/pp.png"),
                        height: 70,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: FutureBuilder(
                        future: futureUser,
                        builder: (context, snapshot){
                          if (snapshot.hasData) {
                                print(snapshot.data!.name);
                                return Text(snapshot.data!.name, style: TextStyle(
                          color: Color.fromARGB(255, 12, 53, 106),
                          fontSize: 17,
                          fontWeight: FontWeight.w900),
                          );
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              }

                              // By default, show a loading spinner.
                              return const CircularProgressIndicator();
                        }
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: FutureBuilder(
                        future: futureUser,
                        builder: (context, snapshot){
                          if (snapshot.hasData) {
                                print(snapshot.data!.email);
                                return Text(snapshot.data!.email, style: TextStyle(
                          color: Color.fromARGB(150, 12, 53, 106),
                          fontSize: 14,
                          // fontWeight: FontWeight.w900
                        ),);
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              }

                            // By default, show a loading spinner.
                            return const CircularProgressIndicator(
                              color: Colors.black,
                            );
                          }),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.only(
                            top: 10, bottom: 10, left: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 16),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      // Pindah ke halaman ClockInPage saat tombol Clock In ditekan
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                QRCodeScanner()),
                                      );
                                    },
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              right:
                                                  8.0), // Adjust the padding as needed
                                          child: Image(
                                            image: AssetImage(
                                                "lib/images/qrcode.png"),
                                            height: 30,
                                          ),
                                        ),
                                        Text(
                                          "QR Code",
                                          style: TextStyle(color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor:
                                          Color.fromARGB(255, 255, 255, 255),
                                      textStyle: TextStyle(
                                          fontWeight: FontWeight.w800),
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(5),
                                      ),
                                      elevation: 7,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            ElevatedButton(
                              onPressed: () {
                                // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => ProfileEdit()),
                                );
                              },
                              child: Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right:
                                            8.0), // Adjust the padding as needed
                                    child: Icon(
                                      Icons.edit,
                                      color: Colors.lightGreen,
                                    ),
                                  ),
                                  Text(
                                    "Edit Profile",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ],
                              ),
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    Color.fromARGB(255, 255, 255, 255),
                                textStyle:
                                    TextStyle(fontWeight: FontWeight.w800),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                elevation: 7,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => InformasiPribadi()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Image(
                          image: AssetImage("lib/images/iconindexprofil/1.png"),
                          height: 30,
                        ),
                      ),
                      Text(
                        "Informasi Pribadi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HubungiKami()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Image(
                          image: AssetImage("lib/images/iconindexprofil/2.png"),
                          height: 30,
                        ),
                      ),
                      Text(
                        "Hubungi Kami",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KartuPegawai()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Image(
                          image: AssetImage("lib/images/iconindexprofil/3.png"),
                          height: 30,
                        ),
                      ),
                      Text(
                        "Kartu Pegawai",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RiwayatAbsensi()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Image(
                          image: AssetImage("lib/images/iconindexprofil/4.png"),
                          height: 30,
                        ),
                      ),
                      Text(
                        "Riwayat Absensi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KodeAktivasi()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Image(
                          image: AssetImage("lib/images/iconindexprofil/5.png"),
                          height: 30,
                        ),
                      ),
                      Text(
                        "Kode Aktivasi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => TentangAplikasi()),
                    );
                  },
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Image(
                          image: AssetImage("lib/images/iconindexprofil/6.png"),
                          height: 30,
                        ),
                      ),
                      Text(
                        "Tentang Aplikasi",
                        style: TextStyle(color: Colors.black),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 255, 255),
                    textStyle: TextStyle(fontWeight: FontWeight.w800),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                height: 47,
                child: ElevatedButton(
                  onPressed: () {
                    // Pindah ke halaman ClockOutPage saat tombol Clock Out ditekan
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => WellcomePage()),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 8.0), // Adjust the padding as needed
                        child: Text(
                          "Logout",
                          style: TextStyle(
                              fontSize: 25,
                              color: const Color.fromARGB(255, 255, 255, 255)),
                        ),
                      ),
                    ],
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color.fromARGB(255, 255, 0, 0),
                    textStyle: TextStyle(fontWeight: FontWeight.w900),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    ),
                    elevation: 7,
                  ),
                ),
              ),
              SizedBox(height: 20,)
            ],
          ),
        ),
      ),
    );
  }
}
