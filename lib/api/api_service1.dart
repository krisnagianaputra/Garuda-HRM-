import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService1 {
  static const String baseUrl = 'https://hrm.garudatechnusantara.com/'; // Replace with your API base URL

  static Future<Map<String, dynamic>> postClockIn(String note, File image) async {
    final String clockInUrl = '$baseUrl/check_in'; // Replace with your Clock In API endpoint

    try {
      final response = await http.post(
        Uri.parse(clockInUrl),
        body: {
          'note': note,
          // Add any other parameters needed for your API
        },
        headers: {
          'Content-Type': 'application/json',
          // Add any other headers needed for your API
        },
      );

      if (response.statusCode == 200) {
        // Handle the successful response
        final Map<String, dynamic> data = json.decode(response.body);
        // You can return the data if needed
        return data;
      } else {
        // Handle the error response
        throw Exception('Failed to post clock in: ${response.reasonPhrase}');
      }
    } catch (error) {
      // Handle any network-related errors
      throw Exception('Failed to connect to the server: $error');
    }
  }

  static Future<Map<String, dynamic>> postClockOut(String note, File? image) async {
    final String clockOutUrl = '$baseUrl/check_out'; // Ganti dengan endpoint API Clock Out Anda

    try {
      final response = await http.post(
        Uri.parse(clockOutUrl),
        body: {
          'note': note,
          // Tambahkan parameter lain yang diperlukan untuk API Clock Out Anda
        },
        headers: {
          'Content-Type': 'application/json',
          // Tambahkan header lain yang diperlukan untuk API Clock Out Anda
        },
      );

      if (response.statusCode == 200) {
        // Tangani respons berhasil
        final Map<String, dynamic> data = json.decode(response.body);
        // Anda dapat mengembalikan data jika diperlukan
        return data;
      } else {
        // Tangani respons error
        throw Exception('Gagal melakukan clock out: ${response.reasonPhrase}');
      }
    } catch (error) {
      // Tangani kesalahan terkait jaringan
      throw Exception('Gagal terhubung ke server: $error');
    }
  }

  static Future<void> uploadImage(File image) async {
    final String uploadImageUrl = '$baseUrl/upload_image'; // Ganti dengan endpoint API untuk mengunggah gambar

    try {
      final request = http.MultipartRequest('POST', Uri.parse(uploadImageUrl));
      request.files.add(http.MultipartFile.fromBytes(
        'image',
        await File(image.path).readAsBytes(),
        filename: 'image.jpg',
      ));

      final response = await http.Response.fromStream(await request.send());

      if (response.statusCode == 200) {
        // Tangani respons berhasil
        final Map<String, dynamic> data = json.decode(response.body);
        // Anda dapat melakukan sesuatu dengan data jika diperlukan
        print('Unggah gambar berhasil: $data');
      } else {
        // Tangani respons error
        throw Exception('Gagal mengunggah gambar: ${response.reasonPhrase}');
      }
    } catch (error) {
      // Tangani kesalahan terkait jaringan
      throw Exception('Gagal terhubung ke server: $error');
    }
  }

  Future<void> UploadImage(File imageFile) async {
  var apiUrl = Uri.parse('URL_API_ANDA'); // Gantilah URL_API_ANDA dengan URL API yang sesuai

  var request = http.MultipartRequest('POST', apiUrl);

  var file = await http.MultipartFile.fromPath('file', imageFile.path);
  request.files.add(file);

  try {
    var response = await request.send();
    if (response.statusCode == 200) {
      print('Image uploaded successfully');
    } else {
      print('Error uploading image. Status code: ${response.statusCode}');
    }
  } catch (e) {
    print('Error uploading image: $e');
  }
}
}
