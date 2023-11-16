import 'package:flutter/material.dart';

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<StatefulWidget> createState() {
    return ExploreState();
  }
}

class ExploreState extends State<Explore> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.fromLTRB(30, 30, 30, 30),
        children: [
          const Text(
            'Navigation: ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/drawer_navigation'),
              child: const Text('Drawer navigation')
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/bottom_navigation'),
              child: const Text('Bottom navigation')
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/tab_bar_navigation'),
              child: const Text('Tab bar navigation')
          ),
          const SizedBox(height: 20,),
          const Text(
            'Actions: ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/common_buttons'),
              child: const Text('Actions')
          ),
          const SizedBox(height: 20,),
        ],
      ),
    );
  }
}