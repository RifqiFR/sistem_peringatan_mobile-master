// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lokasi_rawan.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BencanaRawan _$BencanaRawanFromJson(Map<String, dynamic> json) {
  return BencanaRawan(
    desa: json['desa'] as String,
    id: (json['id'] as num).toInt(),
    kecamatan: json['kecamatan'] as String,
    latitude: double.parse(json['latitude']),
    longitude: double.parse(json['longitude']),
    status: (json['status'] as num).toInt(),
  );
}

Map<String, dynamic> _$BencanaRawanToJson(BencanaRawan instance) =>
    <String, dynamic>{
      'desa': instance.desa,
      'id': instance.id,
      'kecamatan': instance.kecamatan,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'status': instance.status,
    };

Locations _$LocationsFromJson(Map<String, dynamic> json) {
  return Locations(
    bencana_rawan: (json['bencana_rawan'] as List<dynamic>)
        .map((e) => BencanaRawan.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$LocationsToJson(Locations instance) => <String, dynamic>{
  'bencana_rawan': instance.bencana_rawan,
};
