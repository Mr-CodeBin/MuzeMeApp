import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:muse_me_app/pages/NavBarPage.dart';
import 'package:muse_me_app/pages/firstpage.dart';
import 'package:muse_me_app/pages/librarypage.dart';
import 'package:muse_me_app/pages/searchpage.dart';

void main() {
  runApp(const myApp());
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.transparent.withOpacity(0.7),
  ));
}

class myApp extends StatelessWidget {
  const myApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}
//App Opens
