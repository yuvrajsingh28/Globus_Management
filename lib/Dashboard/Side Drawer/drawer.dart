import 'package:flutter/material.dart';

import 'collapsing_navigation_drawer.dart';

class SideDrawer extends StatefulWidget {
  @override
  _SideDrawerState createState() => _SideDrawerState();
}

class _SideDrawerState extends State<SideDrawer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CollapsingNavigationDrawer(),
    );
  }
}
