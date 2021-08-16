// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lokasi_bencana.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BencanaBaru _$BencanaBaruFromJson(Map<String, dynamic> json) {
  return BencanaBaru(
    desa: json['desa'] as String,
    id: (json['id'] as num).toInt(),
    kecamatan: json['kecamatan'] as String,
    latitude: double.parse(json['latitude']),
    longitude: double.parse(json['longitude']),
    tanggal: json['tanggal'] as String,
    foto_bencana: json['foto_bencana'] as String,
  );
}

Map<String, dynamic> _$BencanaBaruToJson(BencanaBaru instance) =>
    <String, dynamic>{
      'desa': instance.desa,
      'id': instance.id,
      'kecamatan': instance.kecamatan,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'tanggal': instance.tanggal,
      'foto_bencana': instance.foto_bencana,
    };

Locations _$LocationsFromJson(Map<String, dynamic> json) {
  return Locations(
    bencana_baru: (json['bencana_baru'] as List<dynamic>)
        .map((e) => BencanaBaru.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$LocationsToJson(Locations instance) => <String, dynamic>{
  'bencana_baru': instance.bencana_baru,
};
