import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:muse_me_app/pages/NavBarPage.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage(
              "https://images.unsplash.com/photo-1625786682948-2168238883d2?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGxpc3RlbmluZyUyMHRvJTIwbXVzaWN8ZW58MHx8MHx8&auto=format&fit=crop&w=2000&q=60",
            ),
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.7),
              BlendMode.modulate,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 160, left: 16, right: 16, bottom: 60),
          child: Column(
            children: [
              Container(
                // height: size.height * 0.2,
                width: size.width * 0.35,
                child: Image.network(
                    "https://cdn-icons-png.flaticon.com/512/865/865548.png"),
              ),
              SizedBox(
                height: size.height * 0.15,
              ),
              Text(
                "Muze Me",
                style: GoogleFonts.satisfy(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  // fontStyle: FontStyle.italic,
                ),
              ),
              SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  // minimumSize: Size(70, 20),
                  backgroundColor: Colors.black,
                  elevation: 2,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(
                      Radius.circular(8),
                    ),
                  ),
                ),
                onPressed: () => Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => NavBarPage())),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 14, horizontal: 10),
                  child: Text(
                    "Get started",
                    style: GoogleFonts.overpass(
                      fontSize: 14,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
