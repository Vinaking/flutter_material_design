import 'package:flutter/material.dart';

class Saved extends StatefulWidget {
  const Saved({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SavedState();
  }
}

class SavedState extends State<Saved> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: const Text("Saved"),
      ),
    );
  }
}