import 'package:flutter/material.dart';
import 'package:portfolio2022/models/nav_bar_item_model.dart';

class NavBarItemMobile extends StatelessWidget {
  final NavBarItemModel model;

  const NavBarItemMobile({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(model.iconData),
          const SizedBox(width: 30),
          Text(
            model.title,
            style: const TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
