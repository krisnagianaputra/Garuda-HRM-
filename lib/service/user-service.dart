import 'dart:convert';
import 'package:attendance_app/models/user-response.dart';
import 'package:http/http.dart' as http;

class UserService {
  static const String baseUrl = 'https://hrm.garudatechnusantara.com/api';
  
  static Future<List<User>> fetchUser() async{
    try {
      final response = await http.get(Uri.parse('$baseUrl/auth/profile'));
      final body = response.body;
      final result = jsonDecode(body);
      List<User> user = List<User>.from(
        result ['data'].map(
          (user) => User.fromJson(user),
        ),
      );
      return user;
    } catch (e) {
      throw Exception(e.toString());
    }
  }
}