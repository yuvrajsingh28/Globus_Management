import 'package:flutter/material.dart';

import 'collapsing_list_tile.dart';
import 'navigation_items.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  _CollapsingNavigationDrawerState createState() =>
      _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState
    extends State<CollapsingNavigationDrawer> {
  double maxWidth = 250;
  double maxHeight = 70;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      color: Colors.black,
      child: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, counter) {
                return CollapsingListTile(
                  title: navigationItems[counter].title,
                  icon: navigationItems[counter].icon,
                );
              },
              itemCount: navigationItems.length,
            ),
          ),
          Icon(
            Icons.chevron_left,
            color: Colors.white,
            size: 50,
          )
        ],
      ),
    );
  }
}
