import 'package:flutter/material.dart';
import 'package:portfolio2022/routes/route_names.dart';
import 'package:portfolio2022/widgets/nav_bar_item/nav_bar_item.dart';
import 'package:portfolio2022/widgets/nav_drawer/nav_drawer_header.dart';

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
          // DONE: Combine the UI for this widget with the NavBarItem and make it responsive
          // The UI for the current DrawerItem shows when it's in mobile, else it shows the NavBarItem ui.
          NavBarItem(
            title: "Projects",
            navigationPath: projectsRoute,
            iconData: Icons.assignment,
          ),
          NavBarItem(
            title: "About",
            navigationPath: aboutRoute,
            iconData: Icons.help,
          ),
        ],
      ),
    );
  }
}
