// To parse this JSON data, do
//
//     final loginResponse = loginResponseFromJson(jsonString);

import 'dart:convert';

LoginResponse loginResponseFromJson(String str) => LoginResponse.fromJson(json.decode(str));

String loginResponseToJson(LoginResponse data) => json.encode(data.toJson());

class LoginResponse {
    String message;
    Data data;

    LoginResponse({
        required this.message,
        required this.data,
    });

    factory LoginResponse.fromJson(Map<String, dynamic> json) => LoginResponse(
        message: json["message"],
        data: Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "data": data.toJson(),
    };
}

class Data {
    int id;
    String userId;
    String waktuMasuk;
    dynamic waktuKeluar;
    String lokasiMasuk;
    dynamic lokasiKeluar;
    dynamic waktuKerja;
    DateTime tanggal;
    String device;
    String evidence;
    DateTime createdAt;
    DateTime updatedAt;

    Data({
        required this.id,
        required this.userId,
        required this.waktuMasuk,
        required this.waktuKeluar,
        required this.lokasiMasuk,
        required this.lokasiKeluar,
        required this.waktuKerja,
        required this.tanggal,
        required this.device,
        required this.evidence,
        required this.createdAt,
        required this.updatedAt,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        id: json["id"],
        userId: json["user_id"],
        waktuMasuk: json["waktu_masuk"],
        waktuKeluar: json["waktu_keluar"],
        lokasiMasuk: json["lokasi_masuk"],
        lokasiKeluar: json["lokasi_keluar"],
        waktuKerja: json["waktu_kerja"],
        tanggal: DateTime.parse(json["tanggal"]),
        device: json["device"],
        evidence: json["evidence"],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
    );

    Map<String, dynamic> toJson() => {
        "id": id,
        "user_id": userId,
        "waktu_masuk": waktuMasuk,
        "waktu_keluar": waktuKeluar,
        "lokasi_masuk": lokasiMasuk,
        "lokasi_keluar": lokasiKeluar,
        "waktu_kerja": waktuKerja,
        "tanggal": tanggal.toIso8601String(),
        "device": device,
        "evidence": evidence,
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
    };
}
