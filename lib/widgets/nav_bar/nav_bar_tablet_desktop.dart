import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/nav_bar/nav_bar_item.dart';
import 'package:portfolio2022/widgets/nav_bar/nav_bar_logo.dart';

class NavBarTabletDesktop extends StatelessWidget {
  const NavBarTabletDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          const NavBarLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: const <Widget>[
              NavBarItem(title: "Projects"),
              SizedBox(width: 60),
              NavBarItem(title: "About"),
            ],
          )
        ],
      ),
    );
  }
}
