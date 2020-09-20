import 'package:flutter/material.dart';
import 'package:globus_management/LoginPage/constants.dart';

import 'collapsing_list_tile.dart';
import 'navigation_items.dart';

class CollapsingNavigationDrawer extends StatefulWidget {
  @override
  _CollapsingNavigationDrawerState createState() =>
      _CollapsingNavigationDrawerState();
}

class _CollapsingNavigationDrawerState extends State<CollapsingNavigationDrawer>
    with SingleTickerProviderStateMixin {
  double maxWidth = 250;
  double minWidth = 70;
  bool isCollapsed = false;
  AnimationController _animatedController;
  Animation<double> widthAnimation;
  int currentSelectedIndex = 0;

  @override
  void initState() {
    super.initState();
    _animatedController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    widthAnimation = Tween<double>(begin: maxWidth, end: minWidth)
        .animate(_animatedController);
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animatedController,
      builder: (context, widget) => getWidget(context, widget),
    );
  }

  Widget getWidget(context, widget) {
    return Material(
      elevation: 8,
      child: Container(
        width: widthAnimation.value,
        color: Colors.black,
        child: Column(
          children: <Widget>[
            CollapsingListTile(
              title: 'USER NAME',
              icon: Icons.person_outline_rounded,
              animationController: _animatedController,
            ),
            Divider(color: Colors.white, height: 40),
            Expanded(
              child: ListView.separated(
                separatorBuilder: (context, counter) {
                  return Divider(color: Colors.white, height: 12);
                },
                itemBuilder: (context, counter) {
                  return CollapsingListTile(
                    onTap: () {
                      setState(() {
                        currentSelectedIndex = counter;
                      });
                    },
                    isSelected: currentSelectedIndex == counter,
                    title: navigationItems[counter].title,
                    icon: navigationItems[counter].icon,
                    animationController: _animatedController,
                  );
                },
                itemCount: navigationItems.length,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  isCollapsed = !isCollapsed;
                  isCollapsed
                      ? _animatedController.forward()
                      : _animatedController.reverse();
                });
              },
              child: AnimatedIcon(
                icon: AnimatedIcons.close_menu,
                progress: _animatedController,
                color: Colors.white,
                size: 50,
              ),
            ),
            SizedBox(height: 50)
          ],
        ),
      ),
    );
  }
}
