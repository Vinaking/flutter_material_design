import 'package:flutter/material.dart';
import 'package:material_design/container/recents.dart';
import 'package:material_design/container/saved.dart';
import 'package:material_design/container/explore.dart';

class DrawerNavigation extends StatefulWidget {
  const DrawerNavigation({super.key});
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return DrawerNavigationState();
  }
}

class DrawerNavigationState extends State<DrawerNavigation> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Drawer Layout"),
      ),
      body: <Widget> [
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
      ] [_selectedIndex],
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
                decoration: BoxDecoration(color: Colors.lightGreen),
                child: Text(
                  'Drawer Header',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                )
            ),
            ListTile(
              leading: const Icon(Icons.explore),
              title: const Text('Explore'),
              selected: true,
              onTap: () {
                _onItemTapped(0);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.access_time),
              title: const Text('Recents'),
              selected: true,
              onTap: () {
                _onItemTapped(1);
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text('Saved'),
              selected: true,
              onTap: () {
                _onItemTapped(2);
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}