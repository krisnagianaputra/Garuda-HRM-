import 'package:attendance_app/components/bottom_navigation.dart';
import 'package:attendance_app/wellcome_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _rememberMe = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color.fromARGB(255, 12, 53, 106),
        body: SingleChildScrollView(
          child: Container(
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
                  'Wellcome',
                  style: TextStyle(
                    fontSize: 58,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'Login to your Account',
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    width: 400,
                    height: 375,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                      borderRadius: BorderRadius.all(Radius.circular(10)),
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
                      padding: const EdgeInsets.all(18),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Email', // Nama sosial media
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 93, 93, 93),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            decoration: InputDecoration(
                              labelText: 'Username',
                              border: OutlineInputBorder(),
                            ),
                          ),
                          SizedBox(height: 20),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              'Password', // Nama sosial media
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                                color: Color.fromARGB(255, 93, 93, 93),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          TextField(
                            obscureText: true,
                            decoration: InputDecoration(
                              labelText: 'Password',
                              border: OutlineInputBorder(),
                              suffixIcon: Icon(Icons.visibility),
                            ),
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value:
                                    _rememberMe, // Set the initial checkbox state
                                onChanged: (bool? value) {
                                  setState(() {
                                    _rememberMe = value ??
                                        false; // Update the checkbox state
                                  });
                                },
                              ),
                              Text('Remember Me'),
                              SizedBox(
                                width: 50,
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => WellcomePage()),
                                  );
                                },
                                child: Text("Forgot Password"),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 10,
                          ),
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
                              backgroundColor: Color.fromARGB(
                                  255, 12, 53, 106), // Background color
                              onPrimary: Colors.white, // Text color
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    10), // Button border radius
                              ),
                              padding: EdgeInsets.symmetric(
                                  horizontal: 120, vertical: 15),
                            ),
                            child: Text(
                              'Login',
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50),
                            child: Row(
                              children: [
                                Text("Don't Have Account?"),
                                TextButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => WellcomePage()),
                                    );
                                  },
                                  child: Text("Sign Up"),
                                ),
                              ],
                            ),
                          ),
                        ],
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
