import 'package:flutter/material.dart';

class Recents extends StatefulWidget {
  const Recents({super.key});

  @override
  State<StatefulWidget> createState() {
    return RecentState();
  }
}

class RecentState extends State<Recents> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text("Recents"),
      ),
    );
  }
}