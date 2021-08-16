import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'lokasi_rawan.g.dart';

@JsonSerializable()
class BencanaRawan {
  BencanaRawan({
    required this.desa,
    required this.id,
    required this.kecamatan,
    required this.latitude,
    required this.longitude,
    required this.status,
  });

  factory BencanaRawan.fromJson(Map<String, dynamic> json) => _$BencanaRawanFromJson(json);
  Map<String, dynamic> toJson() => _$BencanaRawanToJson(this);

  final String desa;
  final int id;
  final String kecamatan;
  final double latitude;
  final double longitude;
  final int status;
}

@JsonSerializable()
class Locations {
  Locations({
    required this.bencana_rawan,
  });

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
  Map<String, dynamic> toJson() => _$LocationsToJson(this);

  final List<BencanaRawan> bencana_rawan;

}

Future<Locations> getGoogleOffices(jenisbencana) async {
  const googleLocationsURL = 'http://192.168.43.204:8000/api/lokasi-rawan/';

  // Retrieve the locations of Google offices
  final response = await http.get(Uri.parse(googleLocationsURL+jenisbencana));
  if (response.statusCode == 200) {
    print(json.decode(response.body));
    return Locations.fromJson(json.decode(response.body));
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(googleLocationsURL));
  }
}