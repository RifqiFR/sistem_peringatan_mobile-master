// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'locations.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RiwayatBencana _$RiwayatBencanaFromJson(Map<String, dynamic> json) {
  return RiwayatBencana(
    desa: json['desa'] as String,
    id: (json['id'] as num).toInt(),
    kecamatan: json['kecamatan'] as String,
    latitude: double.parse(json['latitude']),
    longitude: double.parse(json['longitude']),
    kerusakan: json['kerusakan'] as String,
    kerugian: json['kerugian'] as String,
    status_perbaikan: json['status_perbaikan'] as String,
    bulan: json['bulan'] as String,
    tahun: (json['tahun']).toString(),
  );
}

Map<String, dynamic> _$RiwayatBencanaToJson(RiwayatBencana instance) =>
    <String, dynamic>{
      'desa': instance.desa,
      'id': instance.id,
      'kecamatan': instance.kecamatan,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'kerusakan': instance.kerusakan,
      'kerugian': instance.kerugian,
      'status_perbaikan': instance.status_perbaikan,
      'bulan': instance.bulan,
      'tahun': instance.tahun,
    };

Locations _$LocationsFromJson(Map<String, dynamic> json) {
  return Locations(
    riwayat_bencana: (json['riwayat_bencana'] as List<dynamic>)
        .map((e) => RiwayatBencana.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$LocationsToJson(Locations instance) => <String, dynamic>{
     'riwayat_bencana': instance.riwayat_bencana,
    };
