import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:toggle_bar/toggle_bar.dart';

class Toggle_Bar extends StatefulWidget {
  @override
  _Toggle_BarState createState() => _Toggle_BarState();
}

class _Toggle_BarState extends State<Toggle_Bar> {
  @override
  Widget build(BuildContext context) {
    List<String> labels = [
      "Basic Information",
      "Disease",
      "Treatment",
      "Medications",
    ];
    Color selectedTabColor = Colors.black;
    Color textColor = Colors.black;
    int currentIndex = 0;

    return ToggleBar(
      labels: labels,
      labelTextStyle: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      backgroundColor: Colors.white,
      selectedTabColor: selectedTabColor,
      textColor: textColor,
      onSelectionUpdated: (index) => setState(() => currentIndex = index),
    );
  }
}
