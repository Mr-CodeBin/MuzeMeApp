import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muse_me_app/pages/librarypage.dart';
import 'package:muse_me_app/pages/searchpage.dart';
import 'package:muse_me_app/pages/utils/playlist_card.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _playlists = [
    'https://images.pexels.com/photos/167092/pexels-photo-167092.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/1713953/pexels-photo-1713953.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/7422154/pexels-photo-7422154.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/3593865/pexels-photo-3593865.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/3935703/pexels-photo-3935703.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
    'https://images.pexels.com/photos/2742812/pexels-photo-2742812.jpeg?auto=compress&cs=tinysrgb&w=800',
    'https://images.pexels.com/photos/1710795/pexels-photo-1710795.jpeg?auto=compress&cs=tinysrgb&w=800',
    'https://images.pexels.com/photos/2072583/pexels-photo-2072583.jpeg?auto=compress&cs=tinysrgb&w=800',
  ];
  final _albums = [
    'album1',
    'album2',
    'album3',
    'album4',
    'album5',
    'album6',
    'album7',
    'album8',
  ];

  // List pageKeys = [Homepage(), searchPage(), libPage()];

  // int currentIndex = 0;

  // Map<String, GlobalKey<NavigatorState>> _navigatorKeys = {
  //   "Page1": GlobalKey<NavigatorState>(),
  //   "Page2": GlobalKey<NavigatorState>(),
  //   "Page3": GlobalKey<NavigatorState>(),
  // };

  // late int _currentPage;
  // int _selectedIndex = 0;

  // void _selectTab(String tabItem, int index) {
  //   if (tabItem == _currentPage) {
  //     setState(() {
  //       _currentPage = pageKeys[index];
  //       _selectedIndex = index;
  //     });
  //   }
  // }

  int _selectedIndex = 2;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.fromLTRB(8, 8, 8, 50),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Discover",
                          style: GoogleFonts.overpass(
                            fontSize: 32,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _playlists.length,
                          itemBuilder: ((context, index) {
                            return MyCard(
                              imagechild: _playlists[index],
                              child: _albums[index],
                            );
                          })),
                    ),
                    Row(
                      children: [
                        Text(
                          "Album",
                          style: GoogleFonts.overpass(
                            fontSize: 32,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: GridView.builder(
                          gridDelegate:
                              const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 300,
                            childAspectRatio: 2 / 3,
                            crossAxisSpacing: 10,
                            mainAxisSpacing: 5,
                          ),
                          scrollDirection: Axis.horizontal,
                          itemCount: _playlists.length,
                          itemBuilder: ((context, index) {
                            return MyCard(
                              imagechild: _playlists[index],
                              child: _albums[index],
                            );
                          })),
                    ),
                    Row(
                      children: [
                        Text(
                          "Recently Played",
                          style: GoogleFonts.overpass(
                            fontSize: 32,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _playlists.length,
                          itemBuilder: ((context, index) {
                            return MyCard(
                              imagechild: _playlists[index],
                              child: _albums[index],
                            );
                          })),
                    ),
                    Row(
                      children: [
                        Text(
                          "Made For You",
                          style: GoogleFonts.overpass(
                            fontSize: 32,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 200,
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: _playlists.length,
                          itemBuilder: ((context, index) {
                            return MyCard(
                              imagechild: _playlists[index],
                              child: _albums[index],
                            );
                          })),
                    ),
                  ],
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
                        _onItemTapped;
                        if (_selectedIndex == 1) {}
                      },
                      icon: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: (() {
                        Navigator.of(context).push(MaterialPageRoute(
                            builder: (context) => searchPage()));
                      }),
                      icon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                    IconButton(
                      onPressed: (() {}),
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
