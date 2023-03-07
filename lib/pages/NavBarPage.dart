import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muse_me_app/pages/librarypage.dart';
import 'package:muse_me_app/pages/mainHomePage.dart';
import 'package:muse_me_app/pages/searchpage.dart';
import 'package:muse_me_app/pages/utils/playlist_card.dart';

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key});

  @override
  State<NavBarPage> createState() => _NavBarPageState();
}

class _NavBarPageState extends State<NavBarPage> {
  int _selectedIndex = 0;
  PageController _pageController = PageController();

  @override
  Widget build(BuildContext context) {
    log(_selectedIndex.toString());

    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
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
}
