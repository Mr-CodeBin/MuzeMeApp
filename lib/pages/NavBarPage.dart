import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muse_me_app/pages/librarypage.dart';
import 'package:muse_me_app/pages/mainHomePage.dart';
import 'package:muse_me_app/pages/searchpage.dart';
import 'package:muse_me_app/pages/songPage.dart';
import 'package:muse_me_app/pages/utils/playlist_card.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();
  bool isPlay = true;
  bool isLike = true;

  Timer? _timer;
  Color? _color;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 2), ((timer) => _changeColor()));
    _color = Colors.black;
  }

  void _changeColor() {
    final newColor = _color == Colors.black
        ? Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
            Random().nextInt(256), 1)
        : Color.fromRGBO(Random().nextInt(256), Random().nextInt(256),
            Random().nextInt(256), 1);
    setState(() {
      _color = newColor;
    });
  }

  @override
  Widget build(BuildContext context) {
    // log(_selectedIndex.toString());

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: Stack(
          children: [
            PageView(
              controller: _pageController,
              physics: NeverScrollableScrollPhysics(),
              children: [
                mainHomePage(),
                searchPage(),
                libPage(),
              ],
            ),
            Align(
              alignment: Alignment(0, 0.86),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: ((context) => songPage())));
                },
                child: AnimatedContainer(
                  duration: Duration(seconds: 6),
                  height: 80,
                  width: size.width,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  margin: EdgeInsets.symmetric(vertical: 12, horizontal: 8),
                  decoration: BoxDecoration(
                    color: _color,
                    // Color.fromRGBO(Random().nextInt(256),
                    //     Random().nextInt(256), Random().nextInt(256), 1),

                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Icon(
                        Icons.music_note,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  "Talk Is Overrated" + "--",
                                  // maxLines: 1,
                                  style: GoogleFonts.overpass(
                                    fontSize: 18,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              FittedBox(
                                fit: BoxFit.contain,
                                child: Text(
                                  "Jeremy Zucker ",
                                  // maxLines: 1,
                                  // overflow: TextOverflow.ellipsis,
                                  style: GoogleFonts.overpass(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isLike = !isLike;
                          });
                        },
                        icon: isLike == false
                            ? Icon(Icons.laptop)
                            : Icon(Icons.laptop_chromebook_rounded),
                        color:
                            isLike == false ? Colors.white : Colors.redAccent,
                        iconSize: 30,
                      ),
                      IconButton(
                        onPressed: () {
                          setState(() {
                            isPlay = !isPlay;
                          });
                        },
                        icon: isPlay == false
                            ? Icon(Icons.play_arrow_outlined)
                            : Icon(Icons.stop_outlined),
                        color: Colors.white,
                        iconSize: 36,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: 50,
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.only(left: 24, right: 24, bottom: 6),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 29, 29, 29),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        if (_selectedIndex != 0) {
                          setState(() {
                            _selectedIndex = 0;
                            _pageController.jumpToPage(0);
                          });
                        }
                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: (() {
                        if (_selectedIndex != 1) {
                          setState(() {
                            _selectedIndex = 1;
                            _pageController.jumpToPage(1);
                          });
                        }
                      }),
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: (() {
                        if (_selectedIndex != 2) {
                          setState(() {
                            _selectedIndex = 2;
                            _pageController.jumpToPage(2);
                          });
                        }
                      }),
                      icon: Icon(
                        Icons.library_music,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ) //bottom navbar
          ],
        ), // in stack
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _timer?.cancel();
  }
}
