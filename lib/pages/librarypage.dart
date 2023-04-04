import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class libPage extends StatefulWidget {
  const libPage({super.key});

  @override
  State<libPage> createState() => _libPageState();
}

class _libPageState extends State<libPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xff141414),
        body: Column(
          children: [
            Container(
              width: size.width,
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.grey[900],
              ),
              alignment: Alignment.center,
              child: Text(
                "My Music",
                style: GoogleFonts.overpass(
                  fontSize: 14,
                  color: Colors.white70,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
              padding: EdgeInsets.all(12),
              width: size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[900],
              ),
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(1000),
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                        // borderRadius: BorderRadius.circular(12),
                        color: Colors.blue,
                      ),
                      child: Image.network(
                        "https://images.pexels.com/photos/2742812/pexels-photo-2742812.jpeg?auto=compress&cs=tinysrgb&w=800",
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      // borderRadius: BorderRadius.circular(12),
                      color: Colors.transparent,
                    ),
                    child: Text(
                      "Constant"
                      "\nConnected By",
                      style: GoogleFonts.overpass(
                          fontSize: 18,
                          color: Colors.white70,
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  //ne row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[500],
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.all(0),
                        ),
                        onPressed: (() {}),
                        child: Image.asset(
                          "icons/GoogleIcon.png",
                          // fit: BoxFit.fill,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[500],
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.all(0),
                        ),
                        onPressed: (() {}),
                        child: Image.asset(
                          "icons/facebookIcon.png",
                          // fit: BoxFit.fill,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[500],
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.all(0),
                        ),
                        onPressed: (() {}),
                        child: Image.asset(
                          "icons/whatsappIcon.png",
                          // fit: BoxFit.fill,
                          height: 20,
                          width: 20,
                        ),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Colors.grey[500],
                          onPrimary: Colors.black,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          padding: EdgeInsets.all(0),
                        ),
                        onPressed: (() {}),
                        child: Image.asset(
                          "icons/shareIcon.png",
                          // fit: BoxFit.fill,
                          height: 20,
                          width: 20,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView.count(
                shrinkWrap: true,
                childAspectRatio: 1.6,
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                physics: NeverScrollableScrollPhysics(),
                padding: EdgeInsets.all(12),
                children: [
                  _containerCard(
                    typetext: "My Playlist",
                  ),
                  _containerCard(typetext: "Liked Songs"),
                  _containerCard(typetext: "My Playlist"),
                  _containerCard(typetext: "My Playlist"),
                ],
              ),
            ),
            // Container(
            //   height: 176,
            //   width: size.width,
            //   color: Colors.grey,
            // )
          ],
        ),
      ),
    );
  }
}

class _containerCard extends StatelessWidget {
  final typetext;
  const _containerCard({
    Key? key,
    this.typetext,
  }) : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    String child;
    return Container(
      alignment: Alignment.center,
      // height: 60.0,
      // width: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.grey[900],
      ),
      child: Text(
        typetext,
        style: GoogleFonts.overpass(
          fontSize: 18,
          color: Colors.white70,
          fontWeight: FontWeight.w500,
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
