import 'package:flutter/material.dart';

class libPage extends StatefulWidget {
  const libPage({super.key});

  @override
  State<libPage> createState() => _libPageState();
}

class _libPageState extends State<libPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text("Libpage"),
      ),
    );
  }
}
