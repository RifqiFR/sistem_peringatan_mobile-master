import 'package:ewarn_app/about.dart';
import 'package:ewarn_app/kekeringan/peta_lokasi_kekeringan.dart';
import 'package:ewarn_app/kekeringan/peta_rawan_kekeringan.dart';
import 'package:ewarn_app/kekeringan/peta_riwayat_kekeringan.dart';

import 'package:ewarn_app/kekeringan/sop_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ewarn_app/navigate_url.dart';
class HomePageKekeringan extends StatelessWidget {
  Widget build(BuildContext context){
    return Scaffold(
      body:
        ListView(
            padding: EdgeInsets.only(top: 20),
          children: [
        Container(
        color: Colors.white,
        width : double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Stack(
              children: <Widget>[
                Card(
                  margin: EdgeInsets.fromLTRB(15, 10, 15, 0),
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
                    height: 120,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                Padding(
                  padding : EdgeInsets.only(left: 20, top: 10),
                  child:IconButton(
                    icon: Icon(Icons.arrow_back, size : 35, color: Colors.white),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ),
                Align(
                    alignment: Alignment.center,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const SizedBox(height: 60,),
                          Text('Bencana Kekeringan',
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
            Card(
              margin: const EdgeInsets.all(20),
              color: Color(0xffeab543),
              clipBehavior: Clip.antiAlias,
              elevation: 10,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(40),
                  topLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                  bottomLeft: Radius.circular(40),
                ),
              ),
              child:
              Padding(
                padding: const EdgeInsets.all(20.0),
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
                            Route route = MaterialPageRoute(builder: (context) => PetaLokasiKekeringan());
                            Navigator.push(context, route);
                          },
                          child :
                            Card(
                              elevation: 5,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:SizedBox(
                                width: 130,
                                height: 120,
                                child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "images/location.png",
                                          width: 70.0,
                                          height: 70.0,
                                        ),
                                        Text('Lokasi Kekeringan',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black, fontFamily: 'Open Sans'))
                                      ],
                                    )
                                ),
                              ),
                            )
                          ),
                            GestureDetector(
                                onTap: () {
                                  Route route = MaterialPageRoute(builder: (context) => PetaRawanKekeringan());
                                  Navigator.push(context, route);
                                },
                                child :
                                  Card(
                                        elevation: 5,
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(20),
                                        ),
                                        child:SizedBox(
                                          width: 130,
                                          height: 120,
                                          child: Center(
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    "images/compass.png",
                                                    width: 70.0,
                                                    height: 70.0,
                                                  ),
                                                  Text('Rawan Kekeringan',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black, fontFamily: 'Open Sans'))
                                                ],
                                              )
                                          ),
                                        ),

                                      )
                            )
                          ]
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(bottom: 20),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          GestureDetector(
                            onTap: () {
                              Route route = MaterialPageRoute(builder: (context) => PetaRiwayatKekeringan());
                              Navigator.push(context, route);
                            },
                            child :
                              Card(
                                elevation: 5,
                                color: Colors.white,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child:SizedBox(
                                  width: 130,
                                  height: 120,
                                  child: Center(
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Image.asset(
                                            "images/history.png",
                                            width: 70.0,
                                            height: 70.0,
                                          ),
                                          Text('Riwayat Kekeringan',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black, fontFamily: 'Open Sans'))
                                        ],
                                      )
                                  ),
                                ),
                              )
                          ),
                            GestureDetector(
                                onTap: () {
                                  Route route = MaterialPageRoute(builder: (context) => SOP());
                                  Navigator.push(context, route);
                                },
                                child:
                            Card(
                              elevation: 5,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:SizedBox(
                                width: 130,
                                height: 120,
                                child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "images/note.png",
                                          width: 70.0,
                                          height: 70.0,
                                        ),
                                        Text('SOP Kekeringan',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black, fontFamily: 'Open Sans'))
                                      ],
                                    )
                                ),
                              ),

                            )
                          )
                          ]
                      ),
                    ),
                    Container(
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                          GestureDetector(
                          onTap: () {
                            launchURL();
                          },
                        child:
                            Card(
                              elevation: 5,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:SizedBox(
                                width: 130,
                                height: 120,
                                child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "images/bpbd.png",
                                          width: 70.0,
                                          height: 70.0,
                                        ),
                                        Text('BPBD Bojonegoro',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black, fontFamily: 'Open Sans'))
                                      ],
                                    )
                                ),
                              ),
                            )
                          ),
                          GestureDetector(
                          onTap: () {
                            Route route = MaterialPageRoute(builder: (context) => About());
                            Navigator.push(context, route);
                          },
                          child:
                            Card(
                              elevation: 5,
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child:SizedBox(
                                width: 130,
                                height: 120,
                                child: Center(
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Image.asset(
                                          "images/woman.png",
                                          width: 70.0,
                                          height: 70.0,
                                        ),
                                        Text('Tentang',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13, color: Colors.black, fontFamily: 'Open Sans'))
                                      ],
                                    )
                                ),
                              ),

                            )
                          )
                          ]
                      ),
                    ),
                  ],
                )
              ),
            )
          ],
        ),
      )
        ])
    );
  }
}
