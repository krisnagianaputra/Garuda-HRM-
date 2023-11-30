import 'dart:convert';
import 'package:attendance_app/api_service.dart';
import 'package:attendance_app/models/user-response.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';

Future<User> fetchUser() async {
  String token = await ApiService.getToken() as String;
  final response = await http.get(Uri.parse('https://hrm.garudatechnusantara.com/api/auth/profile'), 
    headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
        'Authorization' : 'Bearer ' + token,
      },
  );

  if (response.statusCode == 200) {
    // If the server did return a 200 OK response,
    // then parse the JSON.
    print(response.body);
    return User.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  } else {
    // If the server did not return a 200 OK response,
    // then throw an exception.
    throw Exception('Failed to load User');
  }
}

class ProfileBar extends StatefulWidget {
  const ProfileBar({super.key});

  @override
  State<ProfileBar> createState() => _ProfileBarState();
}

class _ProfileBarState extends State<ProfileBar> {
  late Future<User> futureUser;


  @override
  void initState() {
    super.initState();
    futureUser = fetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 70, top: 10, bottom: 10),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.deepPurple,
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 10),
                    child: Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Image(
                        image: AssetImage("lib/images/pp.png"),
                        height: 50,
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: FutureBuilder(
                            future: futureUser,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                print(snapshot.data!.name);
                                return Text(snapshot.data!.name);
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              }

                              // By default, show a loading spinner.
                              return const CircularProgressIndicator();
                            }),
                      ),
                      Align(
                        alignment: AlignmentDirectional.topStart,
                        child: FutureBuilder(
                            future: futureUser,
                            builder: (context, snapshot) {
                              if (snapshot.hasData) {
                                print(snapshot.data!.roleId);
                                return Text(snapshot.data!.roleId);
                              } else if (snapshot.hasError) {
                                return Text('${snapshot.error}');
                              }

                              // By default, show a loading spinner.
                              return const CircularProgressIndicator();
                            }),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
