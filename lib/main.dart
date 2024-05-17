import 'package:flutter/material.dart';
import 'package:material_design/home.dart';
import 'package:material_design/list_scroll/grid_view.dart';
import 'package:material_design/list_scroll/list_view.dart';
import 'package:material_design/list_scroll/list_view_multi_type.dart';
import 'package:material_design/list_scroll/scroll_view.dart';
import 'package:material_design/navigation/bottom_navigation.dart';
import 'package:material_design/navigation/custom_bottom_navigation.dart';
import 'package:material_design/navigation/drawer.dart';
import 'package:material_design/navigation/tabbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Home(),
      routes: <String, WidgetBuilder> {
        '/bottom_navigation': (context) => const BottomNavigation(),
        '/drawer_navigation': (context) => const DrawerNavigation(),
        '/tabbar_navigation': (context) => const TabbarNavigation(),
        '/custom_bottom_navigation': (context) => const CustomBottomNavigation(),

        '/list_view': (context) => const ListViewScreen(),
        '/grid_view': (context) => const GridViewScreen(),
        '/list_view_multi_type': (context) => const ListViewMultiTypeScreen(),
        '/scroll_view': (context) => const ScrollViewScreen(),
      },
    );
  }
}


