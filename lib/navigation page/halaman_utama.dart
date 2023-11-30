import 'dart:convert';
import 'package:attendance_app/api_service.dart';
import 'package:attendance_app/fitur%20transaksi/pengajuan_absensi.dart';
import 'package:attendance_app/fitur%20transaksi/pengajuan_cuti.dart';
import 'package:attendance_app/fitur%20transaksi/pengajuan_dinas.dart';
import 'package:attendance_app/fitur%20transaksi/pengajuan_izin.dart';
import 'package:attendance_app/fitur%20transaksi/pengajuan_keluar.dart';
import 'package:attendance_app/fitur%20transaksi/pengajuan_lembur.dart';
import 'package:attendance_app/fitur%20transaksi/pengajuan_peralatan.dart';
import 'package:attendance_app/fitur%20transaksi/pengajuan_reimburse.dart';
import 'package:attendance_app/fitur%20transaksi/pengajuan_sp.dart';
import 'package:attendance_app/fitur%20transaksi/perubahan_status_pegawai.dart';
import 'package:attendance_app/models/login-response.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
    // print(response.body);
    return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load User');
  }
}

class HalamanUtama extends StatefulWidget {
  const HalamanUtama({super.key});

  @override
  State<HalamanUtama> createState() => _HalamanUtamaState();
}

class _HalamanUtamaState extends State<HalamanUtama> {
  late Future<User> futureUser;

  @override
  void initState() {
    super.initState();
    futureUser = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 239, 239, 239),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 25, left: 35, top: 30),
                child: Row(
                  children: [
                    FutureBuilder(
                        future: futureUser,
                        builder: (context, snapshot) {
                          if (snapshot.hasData) {
                            // print(snapshot.data!.name);
                            return Text('Hi ' + snapshot.data!.name,
                                style: GoogleFonts.aBeeZee(
                                  textStyle: TextStyle(
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300),
                                ));
                          } else if (snapshot.hasError) {
                            return Text('${snapshot.error}');
                          }

                          // By default, show a loading spinner.
                          return const CircularProgressIndicator(
                            color: Colors.black,
                          );
                        }
                      ),
                    SizedBox(
                      width: 50,
                    ),
                    Image(
                      image: AssetImage("lib/images/pp.png"),
                      width: 50,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 420,
                height: 800,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color:
                          const Color.fromARGB(255, 0, 0, 0).withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 7,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: 30,
                    ),
                    Container(
                      width: 300,
                      height: 100,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 12, 53, 106),
                        borderRadius: BorderRadius.all(Radius.circular(20)),
                        boxShadow: [
                          BoxShadow(
                            color: const Color.fromARGB(255, 0, 0, 0)
                                .withOpacity(0.5),
                            spreadRadius: 3,
                            blurRadius: 7,
                            offset: Offset(0, 3),
                          ),
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "Balence",
                                  style: TextStyle(
                                    color: Color.fromARGB(100, 255, 255, 255),
                                  ),
                                ),
                                SizedBox(
                                  width: 100,
                                ),
                                Text(
                                  "Lembur/Jam",
                                  style: TextStyle(
                                    color: Color.fromARGB(100, 255, 255, 255),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "10000000",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 25,
                                  ),
                                ),
                                SizedBox(
                                  width: 65,
                                ),
                                Text(
                                  "10000000",
                                  style: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 25,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 30),
                      child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "Transaction",
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w900,
                                color: Color.fromARGB(255, 12, 53, 106)),
                          )),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PengajuanPeralatan()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/1.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Pengajuan Peralatan",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 106)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PengajuanAbsensi()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/2.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Pengajuan Absensi",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 106)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PengajuanCuti()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/3.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Pengajuan Cuti",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 106)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PengajuanIzin()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/4.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Pengajuan Izin",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 106)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PengajuanReimburse()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/5.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Pengajuan Reimburse",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 106)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PengajuanLembur()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/6.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Pengajuan Lembur",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 106)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PengajuanDinas()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/7.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Pengajuan Dinas",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 106)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => PengajuanSP()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/8.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Pengajuan SP",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 106)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PerubahanStatusPegawai()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/9.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Perubahan Status\nPegawai",
                                          style: TextStyle(
                                              color: Color.fromARGB(255, 12, 53, 106),
                                              
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              ElevatedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            PengajuanKeluar()),
                                  );
                                },
                                child: Row(
                                  children: <Widget>[
                                    Column(
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(7),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: const EdgeInsets.only(
                                                    right: 8.0),
                                                child: Container(
                                                  decoration: BoxDecoration(
                                                    color: const Color.fromARGB(255, 255, 180, 31), // Warna latar belakang ikon
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            10), // Bentuk kotak ikon
                                                  ),
                                                  child: Padding(
                                                    padding: const EdgeInsets.all(7),
                                                    child: Image.asset("lib/images/iconhome/10.png"),
                                                  )
                                                ),
                                              ),
                                              SizedBox(
                                                width: 30,
                                              ),
                                              Container(
                                                child: Icon(
                                                  Icons.more_horiz,
                                                  color: Colors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Text(
                                          "Pengajuan Keluar",
                                          style: TextStyle(
                                              color: Color.fromARGB(
                                                  255, 12, 53, 106)),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor:
                                      Color.fromARGB(255, 235, 235, 235),
                                  textStyle:
                                      TextStyle(fontWeight: FontWeight.w800),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  elevation: 7,
                                  fixedSize: Size(155, 100),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
