import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.amber,
        child: Center(
          child: Text(
            "HALAMAN SETTINGS",
            style: TextStyle(fontSize: 40),
          ),
        ),
      ),
    );
  }
}
