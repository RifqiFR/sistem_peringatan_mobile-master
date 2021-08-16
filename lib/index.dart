import 'package:ewarn_app/about.dart';
import 'package:ewarn_app/banjir/home_view.dart';
import 'package:ewarn_app/kekeringan/home_view.dart';
import 'package:ewarn_app/longsor/home_view.dart';
import 'package:ewarn_app/longsor/peta_lokasi_longsor.dart';
import 'package:ewarn_app/longsor/peta_rawan_longsor.dart';
import 'package:ewarn_app/longsor/peta_riwayat_longsor.dart';

import 'package:ewarn_app/longsor/sop_view.dart';
import 'package:ewarn_app/puting_beliung/home_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IndexPage extends StatelessWidget {
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(padding: EdgeInsets.only(top: 20), children: [
      Container(
        color: Colors.white,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.fromLTRB(15, 10, 15, 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                    ),
                  ),
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  child: Image.asset(
                    'images/header.png',
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const SizedBox(height: 20,),
                        Image.asset(
                          'images/logo_bojonegoro.png',
                          height: 120,
                          fit: BoxFit.cover,
                        ),Text('Selamat Datang',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                                color: Colors.white,
                                fontFamily: 'Open Sans'))
                      ])
                ),
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text('Bencana Alam',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.black,
                          fontFamily: 'Open Sans'))
              )
            ),

            const SizedBox(height: 15),
            Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) =>
                                            HomePageBanjir());
                                    Navigator.push(context, route);
                                  },
                                  child: Card(
                                    elevation: 5,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: SizedBox(
                                      width: 160,
                                      height: 150,
                                      child: Center(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "images/banjir.png",
                                            width: 110.0,
                                            height: 110.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Text('Banjir',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontFamily: 'Open Sans'))
                                        ],
                                      )),
                                    ),
                                  )),
                              GestureDetector(
                                  onTap: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) =>
                                            HomePage());
                                    Navigator.push(context, route);
                                  },
                                  child: Card(
                                    elevation: 5,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: SizedBox(
                                      width: 160,
                                      height: 150,
                                      child: Center(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "images/longsor.png",
                                            width: 90.0,
                                            height: 90.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Text('Tanah Longsor',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontFamily: 'Open Sans'))
                                        ],
                                      )),
                                    ),
                                  ))
                            ]),
                      ),

                      Container(
                        margin: const EdgeInsets.only(bottom: 20),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              GestureDetector(
                                  onTap: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) =>
                                            HomePagePutingBeliung());
                                    Navigator.push(context, route);
                                  },
                                  child: Card(
                                    elevation: 5,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: SizedBox(
                                      width: 160,
                                      height: 150,
                                      child: Center(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "images/putbel.png",
                                            width: 110.0,
                                            height: 110.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Text('Puting Beliung',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontFamily: 'Open Sans'))
                                        ],
                                      )),
                                    ),
                                  )),
                              GestureDetector(
                                  onTap: () {
                                    Route route = MaterialPageRoute(
                                        builder: (context) => HomePageKekeringan());
                                    Navigator.push(context, route);
                                  },
                                  child: Card(
                                    elevation: 5,
                                    color: Colors.white,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                    ),
                                    child: SizedBox(
                                      width: 160,
                                      height: 150,
                                      child: Center(
                                          child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "images/kekeringan.png",
                                            width: 110.0,
                                            height: 110.0,
                                            fit: BoxFit.cover,
                                          ),
                                          Text('Kekeringan',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 15,
                                                  color: Colors.black,
                                                  fontFamily: 'Open Sans'))
                                        ],
                                      )),
                                    ),
                                  ))
                            ]),
                      ),
                    ],
                  )),
          ],
        ),
      )
    ]));
  }
}
