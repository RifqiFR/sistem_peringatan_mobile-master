import 'package:ewarn_app/model/SOP.dart';
import 'package:ewarn_app/services/sop.dart';
import 'package:flutter/material.dart';

class SOP extends StatefulWidget {
  SOP({Key? key}) : super(key: key);

  @override
  _SOPState createState() => _SOPState();
}

class _SOPState extends State<SOP> {
  late Future<List<dynamic>> futureSopPra;
  late Future<List<dynamic>> futureSopSaat;
  late Future<List<dynamic>> futureSopPasca;

  @override
  void initState() {
    super.initState();
    futureSopPra = fetchSopLongsorPra();
    futureSopSaat = fetchSopLongsorSaat();
    futureSopPasca = fetchSopLongsorPasca();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('SOP Longsor',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: 'Open Sans')),
          backgroundColor: Color(0xffeaB543),
          bottom: TabBar(
            indicatorColor: Colors.white,
            indicatorSize: TabBarIndicatorSize.label,
            isScrollable: true,
            labelPadding: EdgeInsets.symmetric(horizontal: 10.0),
            tabs: [
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('Pra Bencana',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Open Sans'))),
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('Saat Bencana',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Open Sans'))),
              Padding(
                  padding: EdgeInsets.only(bottom: 10),
                  child: Text('Pasca Bencana',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Colors.white,
                          fontFamily: 'Open Sans'))),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            FutureBuilder<List<dynamic>>(
                future: futureSopPra,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                      shrinkWrap: true,
                      itemCount: snapshot.data.length,
                      padding: EdgeInsets.only(
                          left: 15, right: 15, bottom: 30, top: 15),
                        itemBuilder: (BuildContext context, int index) {
                          return
                            Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      leading: CircleAvatar(
                                        backgroundColor: Color(0xfff8c291),
                                        radius: 50,
                                        child: Text(
                                            (index+1).toString(), // ambil karakter pertama text
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontFamily: 'Open Sans')),
                                      ),
                                      title: Transform(
                                        transform: Matrix4.translationValues(
                                            -16, 0.0, 0.0),
                                        child: Text(
                                            snapshot.data![index]['tindakan'],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.2,
                                                color: Colors.black,
                                                fontFamily: 'Open Sans')),
                                      ),
                                    )
                                )
                            );
                        }
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
            FutureBuilder<List<dynamic>>(
                future: futureSopSaat,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 30, top: 15),
                        itemBuilder: (BuildContext context, int index) {
                          return
                            Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      leading: CircleAvatar(
                                        backgroundColor: Color(0xffeaB543),
                                        radius: 50,
                                        child: Text(
                                            (index+1).toString(), // ambil karakter pertama text
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontFamily: 'Open Sans')),
                                      ),
                                      title: Transform(
                                        transform: Matrix4.translationValues(
                                            -16, 0.0, 0.0),
                                        child: Text(
                                            snapshot.data![index]['tindakan'],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.2,
                                                color: Colors.black,
                                                fontFamily: 'Open Sans')),
                                      ),
                                    )
                                )
                            );
                        }
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
            FutureBuilder<List<dynamic>>(
                future: futureSopPasca,
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  if (snapshot.hasData) {
                    return ListView.builder(
                        shrinkWrap: true,
                        itemCount: snapshot.data.length,
                        padding: EdgeInsets.only(
                            left: 15, right: 15, bottom: 30, top: 15),
                        itemBuilder: (BuildContext context, int index) {
                          return
                            Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Padding(
                                    padding: EdgeInsets.all(10),
                                    child: ListTile(
                                      contentPadding: EdgeInsets.all(0),
                                      leading: CircleAvatar(
                                        backgroundColor: Color(0xffeaB543),
                                        radius: 50,
                                        child: Text(
                                            (index+1).toString(), // ambil karakter pertama text
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.w800,
                                                fontSize: 20,
                                                color: Colors.white,
                                                fontFamily: 'Open Sans')),
                                      ),
                                      title: Transform(
                                        transform: Matrix4.translationValues(
                                            -16, 0.0, 0.0),
                                        child: Text(
                                            snapshot.data![index]['tindakan'],
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 14.2,
                                                color: Colors.black,
                                                fontFamily: 'Open Sans')),
                                      ),
                                    )
                                )
                            );
                        }
                    );
                  } else {
                    return Center(child: CircularProgressIndicator());
                  }
                }),
          ],
        ),
      ),
    );
  }
}
