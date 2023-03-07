import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class songPage extends StatefulWidget {
  const songPage({super.key});

  @override
  State<songPage> createState() => _songPageState();
}

class _songPageState extends State<songPage> {
  bool isPlay = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Text(
          "Song Playing...",
          style: GoogleFonts.overpass(
            fontSize: 18,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 20),
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                // alignment: Alignment.center,
                height: 300,
                width: size.width,
                // margin: EdgeInsets.symmetric(vertical: 12, horizontal: 20),

                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              Container(
                alignment: Alignment.centerLeft,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Changed",
                      style: GoogleFonts.overpass(
                        fontSize: 24,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Changed",
                      style: GoogleFonts.overpass(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "1:39",
                    style: GoogleFonts.overpass(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  Text(
                    "1:39",
                    style: GoogleFonts.overpass(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.laptop,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.skip_previous,
                    color: Colors.white,
                    size: 30,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            isPlay = !isPlay;
                          });
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          backgroundColor: Colors.white,
                          alignment: Alignment.center,
                        ),
                        child: Icon(
                          isPlay == true
                              ? Icons.play_arrow_outlined
                              : Icons.pause,
                          color: Colors.black,
                          size: 38,
                        ),
                      ),
                    ),
                  ),
                  Icon(
                    Icons.skip_next_outlined,
                    color: Colors.white,
                    size: 30,
                  ),
                  Icon(
                    Icons.playlist_play,
                    color: Colors.white,
                    size: 30,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
