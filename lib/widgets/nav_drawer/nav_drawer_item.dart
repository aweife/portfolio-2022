import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/nav_bar/nav_bar_item.dart';

class NavDrawerItem extends StatelessWidget {
  final String title;
  final IconData icon;
  final String navPath;

  const NavDrawerItem(
      {super.key,
      required this.title,
      required this.icon,
      required this.navPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, top: 60),
      child: Row(
        children: <Widget>[
          Icon(icon),
          const SizedBox(width: 30),
          NavBarItem(
            title: title,
            navPath: navPath,
          )
        ],
      ),
    );
  }
}
