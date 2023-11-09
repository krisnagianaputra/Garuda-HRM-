import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurentTime extends StatelessWidget {
  const CurentTime({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Text(
            DateFormat.jm().format(DateTime.now()),
            style: const TextStyle(fontSize: 40),
          ),
        ),
      ],
    );
  }
}
