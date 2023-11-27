import 'dart:io';
import 'package:attendance_app/api/api_service1.dart';
import 'package:attendance_app/pages/lokasi.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ClockOut extends StatefulWidget {
  const ClockOut({Key? key});

  @override
  _ClockOutState createState() => _ClockOutState();
}

class _ClockOutState extends State<ClockOut> {
  File? _image;
  TextEditingController _textEditingController = TextEditingController();

  Future<void> _getImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    setState(() {
      if (pickedFile != null) {
        _image = File(pickedFile.path);
      }
    });
  }

  Future<void> _postClockOut(String note, File? image) async {
    try {
      await ApiService1.postClockOut(note, image); // Menggunakan fungsi postClockOut dari ApiService1
      if (image != null) {
        await ApiService1.uploadImage(image);
      }

      // Handle the response as needed
      print('Clock Out successful');
    } catch (error) {
      // Handle errors
      print('Error posting Clock Out: $error');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 12, 53, 106),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 10),
              // Maps(),
              SizedBox(height: 30),
              Container(
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Center(
                        child: Text(
                          'Clock Out',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.pin_drop_rounded,
                                size: 30,
                                color: Colors.black,
                              ),
                              SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Your Location',
                                    style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(height: 10),
                          // Widget Maps() atau konten lokasi Anda dapat ditambahkan di sini
                        ],
                      ),
                    ),
                    SizedBox(height: 50),
                    Lokasi(),
                    SizedBox(
                      height: 40,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: 50),
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Masukkan catatan...',
                          border: OutlineInputBorder(),
                        ),
                        maxLines: 3,
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          await _getImage();
                          if (_image == null) {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text('Peringatan'),
                                  content: Text('Inputan gambar harus diisi!'),
                                  actions: [
                                    TextButton(
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      },
                                      child: Text('OK'),
                                    ),
                                  ],
                                );
                              },
                            );
                          }
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 12, 53, 106),
                        ),
                        child: Text('Ambil Gambar'),
                      ),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: _image != null
                          ? Image.file(
                              _image!,
                              width: 300,
                              fit: BoxFit.cover,
                            )
                          : Container(),
                    ),
                    SizedBox(height: 20),
                    Center(
                      child: ElevatedButton(
                        onPressed: () async {
                          String note = _textEditingController.text;
                          await _postClockOut(note, _image);
                        },
                        child: Text('Kirim'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color.fromARGB(255, 12, 53, 106),
                        ),
                      ),
                    ),
                    SizedBox(height: 50),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
