import 'package:flutter/material.dart';
import 'package:material_design/container/recents.dart';
import 'package:material_design/container/saved.dart';
import 'package:material_design/container/explore.dart';

class TabbarNavigation extends StatefulWidget {
  const TabbarNavigation({super.key});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return TabbarNavigationState();
  }
}

class TabbarNavigationState extends State<TabbarNavigation>
    with TickerProviderStateMixin {
  late final TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tabbar Layout"),
        bottom: TabBar(controller: _tabController, tabs: const <Widget>[
          Tab(
            text: 'Explore',
            icon: Icon(Icons.explore),
          ),
          Tab(
            text: 'Recents',
            icon: Icon(Icons.access_time),
          ),
          Tab(
            text: 'Saved',
            icon: Icon(Icons.bookmark_border),
          )
        ]),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
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
        ],
      ),
    );
  }
}
