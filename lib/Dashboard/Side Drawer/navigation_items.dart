import 'package:flutter/material.dart';

class NavigationModel {
  String title;
  IconData icon;

  NavigationModel({this.title, this.icon});
}

List<NavigationModel> navigationItems = [
  NavigationModel(
    title: 'Dashboard',
    icon: Icons.insert_chart,
  ),
  NavigationModel(
    title: 'Patients',
    icon: Icons.people,
  ),
  NavigationModel(
    title: 'Search',
    icon: Icons.search,
  ),
  NavigationModel(
    title: 'About Us',
    icon: Icons.info_rounded,
  ),
  NavigationModel(
    title: 'Settings',
    icon: Icons.settings,
  ),
];
