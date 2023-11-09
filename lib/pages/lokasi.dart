import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:geocoding/geocoding.dart';
import 'package:geolocator/geolocator.dart';

class Lokasi extends StatefulWidget {
  const Lokasi({super.key});

  @override
  State<Lokasi> createState() => _LokasiState();
}

class _LokasiState extends State<Lokasi> {
  String strLatlong = "Belum Mendapatkan Titik Koordinat";
  String strAlamat = "Silahkan Track Lokasi";
  bool loading = false;

  Future<Position> _getGeolocationPosition() async {
    bool serviceEnable;
    LocationPermission permission;

    serviceEnable = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnable) {
      await Geolocator.openLocationSettings();
      return Future.error("Location Service not enable");
    }

    permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error("location permision denied");
      }
    }
    if (permission == LocationPermission.deniedForever) {
      return Future.error("location permition denied forever, we cannot acces");
    }
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
  }

  Future<void> getAddressFromLongLat(Position position) async {
    List<Placemark> placemarks =
        await placemarkFromCoordinates(position.latitude, position.longitude);
    print(placemarks);

    Placemark place = placemarks[0];
    setState(() {
      strAlamat =
          '${place.street}, ${place.subLocality}, ${place.locality}, ${place.postalCode}, ${place.country}';
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Titik Koordinat",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          GestureDetector(
            child: Text(strLatlong),
            onLongPress: () {
              Clipboard.setData(ClipboardData(text: strLatlong));
              final snackBar = SnackBar(
                content: Text("Koordinat Berhasil Disalin"),
                backgroundColor: Color.fromARGB(255, 0, 78, 127),
                action: SnackBarAction(label: "Tutup", onPressed: () {}),
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "Alamat",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: GestureDetector(
              child: Text(strAlamat),
              onLongPress: () {
                Clipboard.setData(ClipboardData(text: strAlamat));
                final snackBar = SnackBar(
                  content: Text("Alamat Berhasil Disalin"),
                  backgroundColor: Color.fromARGB(255, 0, 78, 127),
                  action: SnackBarAction(
                    label: "Tutup",
                    onPressed: () {},
                  ),
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
            ),
          ),
          SizedBox(
            height: 20,
          ),
          loading
              ? Center(child: CircularProgressIndicator())
              : ElevatedButton(
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(const Color.fromARGB(255, 12, 53, 106)),
                    
                  ),
                  onPressed: () async {
                    setState(() {
                      loading = true;
                    });

                    Position position = await _getGeolocationPosition();
                    setState(() {
                      loading = false;
                      strLatlong =
                          '${position.latitude}, ${position.longitude}';
                    });

                    getAddressFromLongLat(position);
                  },                  
                  child: Text("Track Lokasi"),
                ),
        ],
      ),
    );
  }
}
