import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ewarn_app/locations.dart' as locations;
import 'package:location/location.dart';


class PetaRiwayatKekeringan extends StatefulWidget {
  @override
  _PetaRiwayatKekeringanState createState() => _PetaRiwayatKekeringanState();
}

class _PetaRiwayatKekeringanState extends State<PetaRiwayatKekeringan> {
  final Map<String, Marker> _markers = {};
  final LatLng _center = const LatLng(-7.317463, 111.761466);
  LatLng _lastMapPosition = const LatLng(-7.317463, 111.761466);

  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices('kekeringan');
    setState(() {
      _markers.clear();
      for (final riwayat_bencana in googleOffices.riwayat_bencana) {
        final marker = Marker(
          markerId: MarkerId(riwayat_bencana.id.toString()),
          position: LatLng(riwayat_bencana.latitude, riwayat_bencana.longitude),
          infoWindow: InfoWindow(
            title: riwayat_bencana.desa,
            snippet: riwayat_bencana.tahun,
          ),
        );
        _markers[riwayat_bencana.desa] = marker;
      }
    });
  }
  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  Location location = new Location();
  late bool _serviceEnabled;
  late PermissionStatus _permissionGranted;
  _locateMe() async {
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        return;
      }
    }
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        return;
      }
    }

  }
  @override
  initState() {
    super.initState();
    _locateMe();
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Peta Riwayat Kekeringan',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white, fontFamily: 'Open Sans')),
        backgroundColor: Color(0xffeaB543),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: _center,
          zoom: 10.0,
        ),
        onCameraMove: _onCameraMove,
        markers: _markers.values.toSet(),
      ),
    );
  }
}