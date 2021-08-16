class SopModel {
  final int jenisBencana;
  final String jenisSop;
  final int id;
  final String tindakan;

  SopModel({
    required this.jenisBencana,
    required this.id,
    required this.jenisSop,
    required this.tindakan,
  });

  factory SopModel.fromJson(Map<String, dynamic> json) {
    return SopModel(
      jenisBencana: json['jenis_bencana'],
      id: json['id'],
      jenisSop: json['jenis_sop'],
      tindakan: json['detail_sop']['tindakan'],
    );
  }

}
