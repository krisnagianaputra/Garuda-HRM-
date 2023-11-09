import 'package:flutter/material.dart';

class ProfileBar extends StatelessWidget {
  const ProfileBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: Container(
        width: 236,
        height: 45,
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 80, 38, 152), // Warna latar belakang
          borderRadius: BorderRadius.circular(10), // Bentuk tepi widget
        ),
        child: const Stack(
          children: <Widget>[
            Positioned(
              child: SizedBox(
                width: 45,
                height: 45,
                child: Image(image: AssetImage("lib/images/pp.png"))
              ),
            ),
            Positioned(
              left: 57,
              top: 8,
              child: SizedBox(
                width: 179,
                height: 34,
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 19,
                      child: Text(
                        '12345678 - Junior UX Designer',
                        style: TextStyle(
                          color: Color(0xFFF4F4F4),
                          fontSize: 12,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 0,
                      top: 0,
                      child: Text(
                        'Jacob Jones',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
