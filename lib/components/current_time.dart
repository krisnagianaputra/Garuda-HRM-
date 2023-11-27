import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class CurentTime extends StatefulWidget {
  const CurentTime({super.key});

  @override
  State<CurentTime> createState() => _CurentTimeState();
}

class _CurentTimeState extends State<CurentTime> {
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
