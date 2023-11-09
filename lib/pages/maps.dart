import 'package:flutter/material.dart';

class Maps extends StatelessWidget {
  const Maps({super.key});

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