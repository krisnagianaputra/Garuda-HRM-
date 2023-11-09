import 'package:attendance_app/components/bottom_navigation.dart';
import 'package:attendance_app/pages/login_page.dart';
import 'package:flutter/material.dart';

class WellcomePage extends StatelessWidget {
  const WellcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/images/bg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Widget untuk menampilkan logo
              Padding(
                padding: const EdgeInsets.only(bottom: 200),
                child: Image.asset(
                  'lib/images/garudahrm.png', // Ganti 'assets/logo.png' dengan path gambar logo Anda
                  width: 200, // Sesuaikan lebar logo sesuai kebutuhan
                ),
              ),
              Text(
                'Presensi',
                style: TextStyle(
                  fontSize: 58,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'Kehadiran Karyawan',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 200), // Atur jarak antara teks dan tombol

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            LoginPage()), // Pindah ke halaman detail
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromARGB(255, 12, 53, 106), // Background color
                  onPrimary: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Button border radius
                  ),
                  padding: EdgeInsets.symmetric(
                      horizontal: 120, vertical: 15),
                ),
                child: Text(
                  'Login',
                  style: TextStyle(fontSize: 18),
                ),
              ),

              SizedBox(height: 12), // Atur jarak antara tombol Login dan SignUp

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            BottomNavigation()), // Pindah ke halaman detail
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(0, 76, 175, 79), // Background color
                  onPrimary: Colors.white, // Text color
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Button border radius
                  ),
                  padding: EdgeInsets.symmetric(
                     horizontal: 120, vertical: 15),
                ),
                child: Text(
                  'Sign Up',
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
