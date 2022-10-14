import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/nav_drawer/nav_drawer_header.dart';
import 'package:portfolio2022/widgets/nav_drawer/nav_drawer_item.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: const BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 16,
          ),
        ],
      ),
      child: Column(
        children: const <Widget>[
          NavDrawerHeader(),
          NavDrawerItem(title: "Projects", icon: Icons.assignment),
          NavDrawerItem(title: "About", icon: Icons.help),
        ],
      ),
    );
  }
}
