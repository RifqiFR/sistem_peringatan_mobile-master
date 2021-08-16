import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'lokasi_bencana.g.dart';

@JsonSerializable()
class BencanaBaru {
  BencanaBaru({
    required this.desa,
    required this.id,
    required this.kecamatan,
    required this.latitude,
    required this.longitude,
    required this.tanggal,
    required this.foto_bencana,
  });

  factory BencanaBaru.fromJson(Map<String, dynamic> json) => _$BencanaBaruFromJson(json);
  Map<String, dynamic> toJson() => _$BencanaBaruToJson(this);

  final String desa;
  final int id;
  final String kecamatan;
  final double latitude;
  final double longitude;
  final String tanggal;
  final String foto_bencana;
}

@JsonSerializable()
class Locations {
  Locations({
    required this.bencana_baru,
  });

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
  Map<String, dynamic> toJson() => _$LocationsToJson(this);

  final List<BencanaBaru> bencana_baru;

}

Future<Locations> getGoogleOffices(jenisbencana) async {
  const googleLocationsURL = 'http://192.168.43.204:8000/api/bencana-baru/';

  // Retrieve the locations of Google offices
  final response = await http.get(Uri.parse(googleLocationsURL+jenisbencana));
  if (response.statusCode == 200) {
    print(json.encode(response.body));
    return Locations.fromJson(json.decode(response.body));
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(googleLocationsURL));
  }
}