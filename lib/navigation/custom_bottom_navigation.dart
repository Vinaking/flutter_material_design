import 'package:flutter/material.dart';
import 'package:material_design/container/recents.dart';
import 'package:material_design/container/saved.dart';
import 'package:material_design/container/explore.dart';

class CustomBottomNavigation extends StatefulWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavigation> createState() => _CustomBottomNavigationState();
}

class _CustomBottomNavigationState extends State<CustomBottomNavigation> {
int pageIndex = 0;

final pages = [
  const Explore(),
  const Recents(),
  const Saved(),
];

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color(0xffC4DFCB),
    appBar: AppBar(
      leading: Icon(
        Icons.menu,
        color: Theme.of(context).primaryColor,
      ),
      title: Text(
        "Geeks For Geeks",
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontSize: 25,
          fontWeight: FontWeight.w600,
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.white,
    ),
    body: pages[pageIndex],
    bottomNavigationBar: buildMyNavBar(context),
  );
}

Container buildMyNavBar(BuildContext context) {
  return Container(
    height: 80,
    decoration: const BoxDecoration(
      color: Colors.white
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: const BorderSide(color: Colors.black, width: 2.0),
          ),
          child: InkWell(
            onTap: () {
              setState(() {
                pageIndex = 0;
              });
            },
            child: const SizedBox(
              height: 80.0,
              width: 88.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.home_filled,
                    size: 40.0,
                  ),
                  Text(
                    "Home",
                    style: const TextStyle(fontSize: 18.0),
                  ),
                ],
              ),
            ),
          ),
        ),
        IconButton(
          enableFeedback: false,
          onPressed: () {
            setState(() {
              pageIndex = 1;
            });
          },
          icon: pageIndex == 1
              ? const Icon(
            Icons.work_rounded,
            color: Colors.black,
            size: 35,
          )
              : const Icon(
            Icons.work_outline_outlined,
            color: Colors.green,
            size: 35,
          ),
        ),
        IconButton(
          enableFeedback: false,
          onPressed: () {
            setState(() {
              pageIndex = 2;
            });
          },
          icon: pageIndex == 2
              ? const Icon(
            Icons.widgets_rounded,
            color: Colors.black,
            size: 35,
          )
              : const Icon(
            Icons.widgets_outlined,
            color: Colors.green,
            size: 35,
          ),
        ),
      ],
    ),
  );
}
}
