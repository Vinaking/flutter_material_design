import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:material_design/extension/hexcolor.dart';

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
        child: Column(
          children: [
            SizedBox(
              width: 100,
              height: 100,
              child:  DecoratedBox(
                decoration:  BoxDecoration(
                    color: HexColor.fromHex("#F9E7C5")
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child:  DecoratedBox(
                decoration:  BoxDecoration(
                    color: HexColor.fromHex("#E6A11D")
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child:  DecoratedBox(
                decoration:  BoxDecoration(
                    color: HexColor.fromHex("#5F420B")
                ),
              ),
            ),
            SizedBox(
              width: 100,
              height: 100,
              child:  DecoratedBox(
                decoration:  BoxDecoration(
                    color: HexColor.fromHex("#130D02")
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}