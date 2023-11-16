import 'package:flutter/material.dart';
import 'package:material_design/container/recents.dart';
import 'package:material_design/container/saved.dart';
import 'package:material_design/home.dart';
import 'package:material_design/container/explore.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<StatefulWidget> createState() {
    return _BottomNavigationState();
  }
}

class _BottomNavigationState extends State<BottomNavigation> {
  int currentPageIndex = 0;

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Bottom navigation Sample'),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
              icon: Badge(
                isLabelVisible: true,
                label: Text('2'),
                backgroundColor: Colors.green,
                alignment: AlignmentDirectional.topEnd,
                child: Icon(Icons.access_time),
              ),
              label: 'Recents'),
          NavigationDestination(
            selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.bookmark_border),
            label: 'Saved',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          alignment: Alignment.center,
          child: const Explore(),
        ),
        Container(
          alignment: Alignment.center,
          child: const Recents(),
        ),
        Container(
          alignment: Alignment.center,
          child: const Saved(),
        ),
      ][currentPageIndex],
    );
  }
}
