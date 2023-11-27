import 'package:flutter/material.dart';

class HistoryAttendence extends StatefulWidget {
  const HistoryAttendence({super.key});

  @override
  State<HistoryAttendence> createState() => _HistoryAttendenceState();
}

class _HistoryAttendenceState extends State<HistoryAttendence> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
            color: Colors.white,
          ),
          child: Row(
            children: [
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.only(left: 25),
                      child: Row(
                        children: [
                          Icon(Icons.access_time_outlined, size: 20,),
                          SizedBox(width: 20,),
                          Text("Jam Kerja", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,),),
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Container(
                      width: 307,
                      height: 254.50,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 307,
                            height: 30.75,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Mon, 18 April 2023',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 169,
                                  top: 0,
                                  child: Text(
                                    '08:00 - 05:00 PM',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14),
                          Container(
                            width: 306,
                            height: 30.75,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Fri, 15 April 2023',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 169,
                                  top: 0,
                                  child: Text(
                                    '08:52 - 05:00 PM',
                                    style: TextStyle(
                                      color: Color(0xFFDD5643),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14),
                          Container(
                            width: 305,
                            height: 30.75,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Thu, 14 April 2023',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 169,
                                  top: 0,
                                  child: Text(
                                    '07:45 - 05:00 PM',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14),
                          Container(
                            width: 305,
                            height: 30.75,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Wed, 13 April 2023',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 169,
                                  top: 0,
                                  child: Text(
                                    '07:55 - 05:00 PM',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14),
                          Container(
                            width: 307,
                            height: 30.75,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Tue, 12 April 2023',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 169,
                                  top: 0,
                                  child: Text(
                                    '08:48 - 05:00 PM',
                                    style: TextStyle(
                                      color: Color(0xFFDD5643),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 14),
                          Container(
                            width: 304,
                            height: 30.75,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Text(
                                    'Mon, 11 April 2023',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 169,
                                  top: 0,
                                  child: Text(
                                    '07:52 - 05:00 PM',
                                    style: TextStyle(
                                      color: Color(0xFF5D5D5D),
                                      fontSize: 15,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w600,
                                      height: 0,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
