import 'package:flutter/material.dart';
import 'package:portfolio2022/router/route_names.dart';
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
          // TODO: Combine the UI for this widget with the NavBarItem and
          // make it responsive
          NavDrawerItem(
            title: "Projects",
            icon: Icons.assignment,
            navPath: projectsRoute,
          ),
          NavDrawerItem(
            title: "About",
            icon: Icons.help,
            navPath: aboutRoute,
          ),
        ],
      ),
    );
  }
}
