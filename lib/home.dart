import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  State<Home> createState() {
    return _HomeState();
  }
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Material Components Widgets'),
        centerTitle: true,
        backgroundColor: Colors.lightGreen,
        foregroundColor: Colors.white,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(30, 30, 30, 30),
        children: [
          const Text(
            'View: ',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.bold,
            ),
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/list_view'),
              child: const Text('List View')
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/grid_view'),
              child: const Text('Grid View')
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/list_view_multi_type'),
              child: const Text('List View Multi Type')
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/scroll_view'),
              child: const Text('Scroll View')
          ),
          const SizedBox(height: 20,),
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
              onPressed: () => Navigator.pushNamed(context, '/tabbar_navigation'),
              child: const Text('Tab bar navigation')
          ),
          ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, '/custom_bottom_navigation'),
              child: const Text('Custom bottom navigation')
          ),
          const SizedBox(height: 20,),
          const Text(
            'Dialog: ',
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