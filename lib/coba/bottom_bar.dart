import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget {
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _currentIndex = 1;

  final List<Widget> _pages = [
    // Ganti widget-widget ini dengan halaman-halaman aplikasi Anda
    // Misalnya: Halaman1(), Halaman2(), Halaman3(), dll.
    Text('Halaman 1'),
    Text('Halaman 2'),
    Text('Halaman 3'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: const Color.fromARGB(225, 13, 99, 176),
        unselectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Halaman 1',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Halaman 2',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Halaman 3',
          ),
        ],
      ),
    );
  }
}
