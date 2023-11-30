import 'dart:convert';
import 'package:attendance_app/api_service.dart';
import 'package:attendance_app/models/CheckIn-Response.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


Future<CheckInResponse> fetchCheckInResponse() async {
  String token = await ApiService.getToken() as String;
  final response = await http.post(Uri.parse('https://hrm.garudatechnusantara.com/api/attendance/check_in'), 
    headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization' : 'Bearer ' + token,
      },
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.body);
    return CheckInResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load CheckInResponse');
  }
}


class HistoryAttendence extends StatefulWidget {
  const HistoryAttendence({super.key});

  @override
  State<HistoryAttendence> createState() => _HistoryAttendenceState();
}

class _HistoryAttendenceState extends State<HistoryAttendence> {
  late Future<CheckInResponse> futureCheckInResponse;

  @override
  void initState() {
    super.initState();
    futureCheckInResponse = fetchCheckInResponse();
  }
  
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
                          Align(
                            alignment: AlignmentDirectional.topStart,
                            child: FutureBuilder(
                                future: futureCheckInResponse,
                                builder: (context, snapshot) {
                                  if (snapshot.hasData) {
                                    print(snapshot.data!.data.tanggal);
                                    return Text(
                                        snapshot.data!.data.tanggal as String);
                                  } else if (snapshot.hasError) {
                                    return Text('${snapshot.error}');
                                  }

                                  // By default, show a loading spinner.
                                  return const CircularProgressIndicator();
                                }),
                          )
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
