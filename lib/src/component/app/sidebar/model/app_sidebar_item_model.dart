import 'package:flutter/material.dart';

class AppSidebarItemModel {
  const AppSidebarItemModel({
    required this.title,
    required this.icon,
    required this.route,
  });

  final String title;
  final IconData icon;
  final String route;
}
