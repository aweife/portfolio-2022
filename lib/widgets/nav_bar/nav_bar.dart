import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/nav_bar/nav_bar_mobile.dart';
import 'package:portfolio2022/widgets/nav_bar/nav_bar_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: const NavBarMobile(),
      tablet: const NavBarTabletDesktop(),
    );
  }
}
