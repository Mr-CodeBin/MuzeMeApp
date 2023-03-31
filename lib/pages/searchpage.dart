import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class searchPage extends StatefulWidget {
  const searchPage({super.key});

  @override
  State<searchPage> createState() => _searchPageState();
}

class _searchPageState extends State<searchPage> {
  List _items = [
    'item 1',
    'item 2',
    'item 3',
    'item 4',
    'item 5',
    'item 6',
    'item 7',
    'item 8',
    'item 9',
    'item 10',
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 2, horizontal: 12),
                margin: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 29, 29, 29),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: TextField(
                          textCapitalization: TextCapitalization.words,
                          style: GoogleFonts.overpass(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Search",
                            hintStyle: GoogleFonts.overpass(
                              fontSize: 14,
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: size.height * 0.699,
                color: Colors.transparent,
                child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    itemCount: _items.length,
                    itemBuilder: ((context, index) {
                      return Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 120,
                                width: size.width / 3,
                                margin: EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 12),
                                // padding: EdgeInsets.symmetric(
                                //     vertical: 1, horizontal: 1),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: Image.network(
                                  "https://images.pexels.com/photos/2742812/pexels-photo-2742812.jpeg?auto=compress&cs=tinysrgb&w=800",
                                  fit: BoxFit.fitWidth,
                                ),
                              ),
                              Container(
                                height: 120,
                                width: size.width / 1.9,
                                margin: EdgeInsets.symmetric(
                                    vertical: 4, horizontal: 4),
                                padding: EdgeInsets.symmetric(
                                    vertical: 12, horizontal: 12),
                                decoration: BoxDecoration(
                                  color: Colors.blueGrey,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: Text(
                                  _items[index],
                                  textAlign: TextAlign.center,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.grey,
                            height: 2,
                            thickness: 2,
                            endIndent: 30,
                            indent: 16,
                          ),
                        ],
                      );
                    })),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
