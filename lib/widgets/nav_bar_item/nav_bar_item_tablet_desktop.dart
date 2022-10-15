import 'package:flutter/material.dart';
import 'package:portfolio2022/models/nav_bar_item_model.dart';

class NavBarItemTabletDesktop extends StatelessWidget {
  final NavBarItemModel model;

  const NavBarItemTabletDesktop({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Text(
      model.title,
      style: const TextStyle(fontSize: 18),
    );
  }
}
