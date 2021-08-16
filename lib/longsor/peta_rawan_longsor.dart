import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:ewarn_app/lokasi_rawan.dart' as locations;
import 'dart:ui' as ui;

import 'package:location/location.dart';


class PetaRawanLongsor extends StatefulWidget {
  @override
  _PetaRawanLongsorState createState() => _PetaRawanLongsorState();
}

class _PetaRawanLongsorState extends State<PetaRawanLongsor> {
  final Map<String, Marker> _markers = {};
  final LatLng _center = const LatLng(-7.317463, 111.761466);
  LatLng _lastMapPosition = const LatLng(-7.317463, 111.761466);
  late BitmapDescriptor iconRendah;
  late BitmapDescriptor iconTinggi;
  late BitmapDescriptor iconSedang;
  Future<Uint8List> getBytesFromAsset(String path, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(), targetWidth: width);
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(format: ui.ImageByteFormat.png))!.buffer.asUint8List();
  }

  Future<BitmapDescriptor> getBitmapDescriptorFromAssetBytes(String path, int width) async {
    final Uint8List imageData = await getBytesFromAsset(path, width);
    return BitmapDescriptor.fromBytes(imageData);
  }
  void setRendah() async {
    iconRendah = await getBitmapDescriptorFromAssetBytes("images/landslide_rendah.png", 100);
  }
  void setSedang() async {
    iconSedang = await await getBitmapDescriptorFromAssetBytes("images/landslide_sedang.png", 100);
  }
  void setTinggi() async {
    iconTinggi = await await getBitmapDescriptorFromAssetBytes("images/landslide_tinggi.png", 100);
  }
  @override
  void initState() {
    super.initState();
    setRendah();
    setSedang();
    setTinggi();
    _locateMe();

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
  Future<void> _onMapCreated(GoogleMapController controller) async {
    final googleOffices = await locations.getGoogleOffices('longsor');
    setState(() {
      _markers.clear();
      for (final bencana_rawan in googleOffices.bencana_rawan) {
        if(bencana_rawan.status==0){
          final marker = Marker(
            markerId: MarkerId(bencana_rawan.id.toString()),
            position: LatLng(bencana_rawan.latitude, bencana_rawan.longitude),
            infoWindow: InfoWindow(
              title: 'Kemungkinan longsor rendah',
              snippet: bencana_rawan.desa,
            ),
            icon: iconRendah
          );
          _markers[bencana_rawan.desa] = marker;
        } else if(bencana_rawan.status==1) {
          final marker = Marker(
            markerId: MarkerId(bencana_rawan.id.toString()),
            position: LatLng(bencana_rawan.latitude, bencana_rawan.longitude),
            infoWindow: InfoWindow(
              title: 'Kemungkinan longsor sedang',
              snippet: bencana_rawan.desa,
            ),
              icon: iconSedang
          );
          _markers[bencana_rawan.desa] = marker;
        }else if(bencana_rawan.status==2) {
          final marker = Marker(
              markerId: MarkerId(bencana_rawan.id.toString()),
              position: LatLng(bencana_rawan.latitude, bencana_rawan.longitude),
              infoWindow: InfoWindow(
                title: 'Kemungkinan longsor tinggi',
                snippet: bencana_rawan.desa,
              ),
              icon: iconTinggi
          );
          _markers[bencana_rawan.desa] = marker;
        }

      }
    });
  }
  void _onCameraMove(CameraPosition position) {
    _lastMapPosition = position.target;
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Peta Rawan Longsor',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white, fontFamily: 'Open Sans')),
          backgroundColor: Color(0xffeaB543),
        ),
        body: GoogleMap(
          onMapCreated: _onMapCreated,
          initialCameraPosition: CameraPosition(
            target: _center,
            zoom: 15.0,
          ),
          compassEnabled: true,
          onCameraMove: _onCameraMove,
          markers: _markers.values.toSet(),
        ),
      );
  }
}