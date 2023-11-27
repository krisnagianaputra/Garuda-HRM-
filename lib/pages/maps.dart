import 'package:flutter/material.dart';

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          Image(image: AssetImage("lib/images/maps.png"),
          width: 400,
          ),
        ],
      ),
    );
  }
}