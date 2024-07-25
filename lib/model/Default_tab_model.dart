import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DefaultTabModel {
  const DefaultTabModel({required this.icon, required this.text});
  final text;
  final IconData icon;
}

final List<DefaultTabModel> defaulttabmodels = [
  DefaultTabModel(icon: CupertinoIcons.home, text: "home"),
  DefaultTabModel(icon: CupertinoIcons.compass, text: "Discovery"),
  DefaultTabModel(
      icon: CupertinoIcons.square_line_vertical_square, text: "save"),
  DefaultTabModel(icon: CupertinoIcons.profile_circled, text: "User")
];
