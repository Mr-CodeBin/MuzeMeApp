import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class songPage extends StatefulWidget {
  const songPage({super.key});

  @override
  State<songPage> createState() => _songPageState();
}

class _songPageState extends State<songPage> {
  double _value = 0;
  int _songSeconds = 140;
  double _userSongSeconds = 140;
  bool isPlay = true;

  void timechange() {
    var mins = (_value.toInt() / 60);
    var sec = (_value.toInt() % 60);
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    // log(_value.toString());
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
                  color: Colors.transparent,
                  // borderRadius: BorderRadius.circular(20),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    "https://images.pexels.com/photos/2742812/pexels-photo-2742812.jpeg?auto=compress&cs=tinysrgb&w=800",
                    fit: BoxFit.fill,
                  ),
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
                      "Talk Is Overrated",
                      style: GoogleFonts.overpass(
                        fontSize: 28,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "Jeremy Zucker",
                      style: GoogleFonts.overpass(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                child: CupertinoSlider(
                  min: 0.0,
                  max: _userSongSeconds,
                  value: _value,
                  activeColor: CupertinoColors.white,
                  thumbColor: CupertinoColors.white,
                  divisions: _songSeconds + 1,
                  onChanged: (value) {
                    setState(() {
                      _value = value;
                    });
                  },
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    ((_value.toInt() / 60).toStringAsFixed(0) +
                        ":" +
                        (_value.toInt() % 60).toString()),
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
