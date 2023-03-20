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
    return Scaffold(
      body: Container(
        height: size.height,
        width: size.width,
        child: Column(
          children: [
            Container(
              width: size.width,
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                color: Colors.black,
              ),
              alignment: Alignment.center,
              child: Text(
                "My Music",
                style: GoogleFonts.overpass(
                  fontSize: 14,
                  color: Colors.grey,
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
                color: Colors.black,
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
                          color: Colors.grey[600],
                          fontWeight: FontWeight.w500,
                          fontStyle: FontStyle.italic),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 12,
                  )
                ],
              ),
            ),
            Container(
              height: 300,
              child: GridView.count(
                childAspectRatio: 2,
                crossAxisCount: 2,
                crossAxisSpacing: 12,
                mainAxisSpacing: 12,
                padding: EdgeInsets.all(12),
                children: [
                  Container(
                    child: Text("My Playlist"),
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Text("Albums"),
                    height: 50.0,
                    width: 50.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Text("Liked Songs"),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                  ),
                  Container(
                    child: Text("Favourite Artists"),
                    height: 20.0,
                    width: 20.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: size.width,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
  }
}

class MusicCategory extends StatefulWidget {
  const MusicCategory({super.key});

  @override
  State<MusicCategory> createState() => _MusicCategoryState();
}

class _MusicCategoryState extends State<MusicCategory> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 400,
          child: GridView.count(
            crossAxisCount: 2,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.blue,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.green,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.red,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.yellow,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
