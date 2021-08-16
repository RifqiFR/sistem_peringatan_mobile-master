import 'dart:convert';

import 'package:ewarn_app/model/SOP.dart';
import 'package:http/http.dart' as http;
String baseURL = 'http://192.168.43.204:8000/api/sop/';
//sop_banjir
Future<List<dynamic>> fetchSopBanjirPra() async {
  var result = await http.get(Uri.parse(baseURL+'banjir'));
  print(json.decode(result.body)['pra_bencana']);
  return json.decode(result.body)['pra_bencana'];
}
Future<List<dynamic>> fetchSopBanjirSaat() async {
  var result = await http.get(Uri.parse(baseURL+'banjir'));
  print(json.decode(result.body)['saat_bencana']);
  return json.decode(result.body)['saat_bencana'];
}
Future<List<dynamic>> fetchSopBanjirPasca() async {
  var result = await http.get(Uri.parse(baseURL+'banjir'));
  print(json.decode(result.body)['pasca_bencana']);
  return json.decode(result.body)['pasca_bencana'];
}
//sop_longsor
Future<List<dynamic>> fetchSopLongsorPra() async {
  var result = await http.get(Uri.parse(baseURL+'longsor'));
  print(json.decode(result.body)['pra_bencana']);
  return json.decode(result.body)['pra_bencana'];
}
Future<List<dynamic>> fetchSopLongsorSaat() async {
  var result = await http.get(Uri.parse(baseURL+'longsor'));
  print(json.decode(result.body)['saat_bencana']);
  return json.decode(result.body)['saat_bencana'];
}
Future<List<dynamic>> fetchSopLongsorPasca() async {
  var result = await http.get(Uri.parse(baseURL+'longsor'));
  print(json.decode(result.body)['pasca_bencana']);
  return json.decode(result.body)['pasca_bencana'];
}
//sop_kekeringan
Future<List<dynamic>> fetchSopKekeringanPra() async {
  var result = await http.get(Uri.parse(baseURL+'kekeringan'));
  print(json.decode(result.body)['pra_bencana']);
  return json.decode(result.body)['pra_bencana'];
}
Future<List<dynamic>> fetchSopKekeringanSaat() async {
  var result = await http.get(Uri.parse(baseURL+'kekeringan'));
  print(json.decode(result.body)['saat_bencana']);
  return json.decode(result.body)['saat_bencana'];
}
Future<List<dynamic>> fetchSopKekeringanPasca() async {
  var result = await http.get(Uri.parse(baseURL+'kekeringan'));
  print(json.decode(result.body)['pasca_bencana']);
  return json.decode(result.body)['pasca_bencana'];
}
//sop_puting-beliung
Future<List<dynamic>> fetchSopPutingBeliungPra() async {
  var result = await http.get(Uri.parse(baseURL+'puting-beliung'));
  print(json.decode(result.body)['pra_bencana']);
  return json.decode(result.body)['pra_bencana'];
}
Future<List<dynamic>> fetchSopPutingBeliungSaat() async {
  var result = await http.get(Uri.parse(baseURL+'puting-beliung'));
  print(json.decode(result.body)['saat_bencana']);
  return json.decode(result.body)['saat_bencana'];
}
Future<List<dynamic>> fetchSopPutingBeliungPasca() async {
  var result = await http.get(Uri.parse(baseURL+'puting-beliung'));
  print(json.decode(result.body)['pasca_bencana']);
  return json.decode(result.body)['pasca_bencana'];
}