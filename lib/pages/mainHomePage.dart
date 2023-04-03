import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'utils/playlist_card.dart';

class mainHomePage extends StatefulWidget {
  const mainHomePage({super.key});

  @override
  State<mainHomePage> createState() => _mainHomePageState();
}

class _mainHomePageState extends State<mainHomePage> {
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

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        backgroundColor: Colors.transparent.withOpacity(0.7),
        body: SingleChildScrollView(
          physics: AlwaysScrollableScrollPhysics( ),
          child: Padding(
            padding: EdgeInsets.fromLTRB(8, 8, 8, 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 28,
                ),
                Row(
                  children: [
                    Text(
                      "Discover",
                      style: GoogleFonts.overpass(
                        fontSize: 32,
                        color: Colors.white,
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
                        color: Colors.white,
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
                        color: Colors.white,
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
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                //Container card
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
      ),
    );
  }
}
