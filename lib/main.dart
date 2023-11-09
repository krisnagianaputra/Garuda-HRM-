import 'package:attendance_app/wellcome_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: BottomNavigation(),
      // home: WebViewPage(),
      home: WellcomePage(),
      // home: MyHomePage(),
    );
  }
}
