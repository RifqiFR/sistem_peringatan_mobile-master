import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:json_annotation/json_annotation.dart';

part 'locations.g.dart';

@JsonSerializable()
class RiwayatBencana {
  RiwayatBencana({
    required this.desa,
    required this.id,
    required this.kecamatan,
    required this.latitude,
    required this.longitude,
    required this.kerusakan,
    required this.kerugian,
    required this.status_perbaikan,
    required this.bulan,
    required this.tahun,

  });

  factory RiwayatBencana.fromJson(Map<String, dynamic> json) => _$RiwayatBencanaFromJson(json);
  Map<String, dynamic> toJson() => _$RiwayatBencanaToJson(this);

  final String desa;
  final int id;
  final String kecamatan;
  final double latitude;
  final double longitude;
  final String kerusakan;
  final String kerugian;
  final String status_perbaikan;
  final String bulan;
  final String tahun;
}

@JsonSerializable()
class Locations {
  Locations({
    required this.riwayat_bencana,
  });

  factory Locations.fromJson(Map<String, dynamic> json) =>
      _$LocationsFromJson(json);
  Map<String, dynamic> toJson() => _$LocationsToJson(this);

  final List<RiwayatBencana> riwayat_bencana;

}

Future<Locations> getGoogleOffices(jenisbencana) async {
  const googleLocationsURL = 'http://192.168.43.204:8000/api/riwayat-bencana/';

  // Retrieve the locations of Google offices
  final response = await http.get(Uri.parse(googleLocationsURL+jenisbencana));
  if (response.statusCode == 200) {
    return Locations.fromJson(json.decode(response.body));
  } else {
    throw HttpException(
        'Unexpected status code ${response.statusCode}:'
            ' ${response.reasonPhrase}',
        uri: Uri.parse(googleLocationsURL));
  }
}