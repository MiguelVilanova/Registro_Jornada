///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

///File download from FlutterViz- Drag and drop a tools. For more details visit https://flutterviz.io/

import 'package:flutter/material.dart';

//void main() => runApp(MyApp());

/*class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: pantalla(),
    );
  }
}*/

class pantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Align(
        alignment: Alignment(0.0, 0.1),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text(
                      "Registro",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 40,
                        color: Color(0xff716e6e),
                      ),
                    ),
                    Text(
                      "Jornada",
                      textAlign: TextAlign.start,
                      overflow: TextOverflow.clip,
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontStyle: FontStyle.normal,
                        fontSize: 40,
                        color: Color(0xff3a57e8),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 20, 0, 16),
                  child: Text(
                    "Welcome to FlutterViz",
                    textAlign: TextAlign.left,
                    overflow: TextOverflow.clip,
                    style: TextStyle(
                      fontWeight: FontWeight.w700,
                      fontStyle: FontStyle.normal,
                      fontSize: 16,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
             /*   Text(
                  "To make atteractive UI designs using FlutterViz.",
                  textAlign: TextAlign.left,
                  overflow: TextOverflow.clip,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontStyle: FontStyle.normal,
                    fontSize: 14,
                    color: Color(0xff746f6f),
                  ),
                ),*/
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 0),
                  child: Align(
                    alignment: Alignment.center,
                    child:

                        ///***If you have exported images you must have to copy those images in assets/images directory.
                        Image(
                      image: AssetImage("assets/images/placeIndex.png"),
                      height: 200,
                      width: 200,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color(0xff3a57e8),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      side: BorderSide(color: Color(0xffffffff), width: 1),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Acceso",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    textColor: Color(0xffffffff),
                    height: 45,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 16),
                  child: MaterialButton(
                    onPressed: () {},
                    color: Color(0xffffffff),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      side: BorderSide(color: Color(0xff3a57e8), width: 1),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Text(
                      "Sign Up",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        fontStyle: FontStyle.normal,
                      ),
                    ),
                    textColor: Color(0xff3a57e8),
                    height: 45,
                    minWidth: MediaQuery.of(context).size.width,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
