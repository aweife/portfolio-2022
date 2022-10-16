import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/centered_view/centered_view.dart';
import 'package:portfolio2022/widgets/nav_bar/nav_bar.dart';
import 'package:portfolio2022/widgets/nav_drawer/nav_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  final Widget child;

  const LayoutTemplate({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.isMobile ? const NavDrawer() : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              const NavBar(),
              Expanded(child: child),
            ],
          ),
        ),
      ),
    );
  }
}
