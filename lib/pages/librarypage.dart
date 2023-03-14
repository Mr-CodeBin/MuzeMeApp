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
            CustomScrollView(
              slivers: [
                SliverAppBar(
                  expandedHeight: 500,
                  flexibleSpace: FlexibleSpaceBar(
                    background: MusicCategory(),
                  ),
                ),
                SliverToBoxAdapter(
                  child: Text(
                      """ RenderBox was not laid out: RenderRepaintBoundary#f2b6b relayoutBoundary=up1 NEEDS-PAINT'package:flutter/src/rendering/box.dart':box.dart:1 RenderBox was not laid out: RenderRepaintBoundary#f2b6b relayoutBoundary=up1 NEEDS-PAINT'package:flutter/src/rendering/box.dart':box.dart:1 RenderBox was not laid out: RenderRepaintBoundary#f2b6b relayoutBoundary=up1 NEEDS-PAINT'package:flutter/src/rendering/box.dart':box.dart:1 RenderBox was not laid out: RenderRepaintBoundary#f2b6b relayoutBoundary=up1 NEEDS-PAINT'package:flutter/src/rendering/box.dart':box.dart:1 """),
                )
              ],
            ),
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
