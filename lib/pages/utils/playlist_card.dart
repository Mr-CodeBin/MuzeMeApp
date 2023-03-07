import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyCard extends StatefulWidget {
  final child;
  final imagechild;
  const MyCard({super.key, this.child, this.imagechild});

  @override
  State<MyCard> createState() => _MyCardState();
}

class _MyCardState extends State<MyCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      margin: EdgeInsets.all(8),
      height: 200,
      width: 200,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.blue,
        image: DecorationImage(
            image: NetworkImage(
              widget.imagechild,
            ),
            fit: BoxFit.cover),
      ),
      child: Text(
        widget.child,
        style: GoogleFonts.overpass(
          fontSize: 18,
        ),
      ),
    );
  }
}
