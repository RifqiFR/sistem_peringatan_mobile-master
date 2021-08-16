import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Tentang Aplikasi',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white, fontFamily: 'Open Sans')),
          backgroundColor: Color(0xffeaB543),
        ),
        body:
        ListView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                    elevation: 5,
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child:  ListView(
                        shrinkWrap: true,
                        children:
                        ListTile.divideTiles(
                          context: context,
                          tiles: [
                            Padding (
                                padding: EdgeInsets.all(0),
                                child:ListTile(
                                  contentPadding:EdgeInsets.all(0),
                                  leading:Image.asset(
                                    "images/logo.png",
                                    width: 100.0,
                                    height: 100.0,
                                  ),
                                  title:
                                  Padding(padding: EdgeInsets.only(bottom: 5),
                                    child:
                                    Transform.translate(
                                      offset: Offset(-16, 0),
                                      child: Text(
                                          'Tentang',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black, fontFamily: 'Open Sans')),
                                    ),
                                  ),
                                  subtitle:
                                  Transform.translate(
                                    offset: Offset(-16, 0),
                                    child: Text('Ewarn Bojonegoro adalah sistem informasi peringatan dini bencana Tanah Longsor di Kabupaten Bojonegoro berbasis mobile.',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'Open Sans')),
                                  ),
                                  isThreeLine: true,
                                )
                            ),
                            Padding (
                                padding: EdgeInsets.all(0),
                                child:ListTile(
                                  contentPadding:EdgeInsets.all(0),
                                  leading:Image.asset(
                                    "images/info.png",
                                    width: 100.0,
                                    height: 100.0,
                                  ),
                                  title:
                                  Padding(padding: EdgeInsets.only(bottom: 5),
                                    child:
                                    Transform.translate(
                                      offset: Offset(-16, 0),
                                      child: Text('Versi',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black, fontFamily: 'Open Sans')),
                                    ),
                                  ),

                                  subtitle:
                                  Transform.translate(
                                    offset: Offset(-16, 0),
                                    child: Text('Versi 1.0.0',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'Open Sans')),
                                  ),

                                )
                            ),
                            Padding (
                                padding: EdgeInsets.all(0),
                                child:ListTile(
                                  contentPadding:EdgeInsets.all(0),
                                  leading:Image.asset(
                                    "images/update.png",
                                    width: 100.0,
                                    height: 100.0,
                                  ),
                                  title:
                                  Padding(padding: EdgeInsets.only(bottom: 5),
                                    child:
                                    Transform.translate(
                                      offset: Offset(-16, 0),
                                      child: Text('Pembaruan',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15, color: Colors.black, fontFamily: 'Open Sans')),
                                    ),
                                  ),
                                  subtitle:
                                  Transform.translate(
                                    offset: Offset(-16, 0),
                                    child: Text('21 November 2020',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'Open Sans')),
                                  ),

                                )
                            )
                          ],
                        ).toList()
                    )
                ),
                Card(
                    elevation: 5,
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child:  ListView(
                        shrinkWrap: true,
                        children:
                        ListTile.divideTiles(
                          context: context,
                          tiles: [
                            Padding (
                                padding: EdgeInsets.all(0),
                                child:
                                Column (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left:35, top: 5),
                                      child:  Align(
                                      alignment: Alignment.centerLeft,
                                      child:Text('Author',
                                          textAlign: TextAlign.left,
                                          style: TextStyle(fontSize: 16, fontWeight : FontWeight.bold,color: Colors.black, fontFamily: 'Open Sans')),
                                    ),
                                    ),

                                    ListTile(
                                      contentPadding:EdgeInsets.all(0),
                                      leading:Image.asset(
                                        "images/creator.png",
                                        width: 100.0,
                                        height: 100.0,
                                      ),
                                      title:
                                      Transform.translate(
                                        offset: Offset(-16, 0),
                                        child: Text('Nadia Ayu Laksmidewi',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'Open Sans')),
                                      ),
                                    )
                                  ],
                                )

                            ),
                            Padding (
                                padding: EdgeInsets.only(left: 0, right: 0, bottom: 10),
                                child:ListTile(
                                  contentPadding:EdgeInsets.all(0),
                                  leading:Image.asset(
                                    "images/spv.png",
                                    width: 100.0,
                                    height: 100.0,
                                  ),
                                  title:
                                  Transform.translate(
                                    offset: Offset(-16, 0),
                                    child: Text('Arif Basofi, S.Kom., M.T\nDr. Arna Fariza, S.Kom., M.Kom',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 14, color: Colors.black, fontFamily: 'Open Sans')),
                                  ),
                                )
                            )
                          ],
                        ).toList()
                    )
                ),
                Card(
                    elevation: 5,
                    margin: EdgeInsets.all(12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(40),
                        topLeft: Radius.circular(40),
                        bottomLeft: Radius.circular(40),
                        bottomRight: Radius.circular(40),
                      ),
                    ),
                    child:  ListView(
                        shrinkWrap: true,
                        children:
                        ListTile.divideTiles(
                          context: context,
                          tiles: [
                            Padding (
                                padding: EdgeInsets.all(0),
                                child:
                                Column (
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left:35, top: 5),
                                      child:  Align(
                                        alignment: Alignment.centerLeft,
                                        child:Text('Lokasi',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 16, fontWeight : FontWeight.bold,color: Colors.black, fontFamily: 'Open Sans')),
                                      ),
                                    ),

                                    ListTile(
                                      contentPadding:EdgeInsets.all(0),
                                      leading:Image.asset(
                                        "images/loc1.png",
                                        width: 100.0,
                                        height: 100.0,
                                      ),
                                      title:
                                      Transform.translate(
                                        offset: Offset(-16, 0),
                                        child: Text('Politeknik Elektronika Negeri Surabaya',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(fontSize: 13, color: Colors.black, fontFamily: 'Open Sans')),
                                      ),
                                    )
                                  ],
                                )

                            ),
                            Padding (
                                padding: EdgeInsets.only(left: 0, right: 0, bottom: 10),
                                child:ListTile(
                                  contentPadding:EdgeInsets.all(0),
                                  leading:Image.asset(
                                    "images/loc2.png",
                                    width: 100.0,
                                    height: 100.0,
                                  ),
                                  title:
                                  Transform.translate(
                                    offset: Offset(-16, 0),
                                    child: Text('Kampus ITS, Jl. Raya ITS, Keputih, Kec. Sukolilo, Kota SBY, Jawa Timur 60111',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(fontSize: 13, color: Colors.black, fontFamily: 'Open Sans')),
                                  ),

                                )
                            )
                          ],
                        ).toList()
                    )
                )

              ],
            )
      ])
      )
    );
  }
}