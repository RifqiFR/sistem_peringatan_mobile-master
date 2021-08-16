import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ewarn_app/lokasi_bencana.dart' as locations;
import 'package:location/location.dart';


class PetaLokasiPutingBeliung extends StatefulWidget {
  @override
  _PetaLokasiPutingBeliungState createState() => _PetaLokasiPutingBeliungState();
}

class _PetaLokasiPutingBeliungState extends State<PetaLokasiPutingBeliung> {
  final Map<String, Marker> _markers = {};
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices('puting-beliung');
    setState(() {
      _markers.clear();
      for (final bencana_baru in googleOffices.bencana_baru) {
        final marker = Marker(
          markerId: MarkerId(bencana_baru.id.toString()),
          position: LatLng(bencana_baru.latitude, bencana_baru.longitude),
          infoWindow: InfoWindow(
            title: bencana_baru.desa,
            snippet: bencana_baru.tanggal,
          ),
        );
        _markers[bencana_baru.desa] = marker;
      }
    });
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
        title: Text('Peta Lokasi Puting Beliung',
            textAlign: TextAlign.center,
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white, fontFamily: 'Open Sans')),
        backgroundColor: Color(0xffeaB543),
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
          target: const LatLng(-7.317463, 111.761466),
          zoom: 10,
        ),
        markers: _markers.values.toSet(),
      ),
    );
  }
}