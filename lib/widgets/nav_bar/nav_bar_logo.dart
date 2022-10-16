import 'package:flutter/material.dart';
import 'package:portfolio2022/extensions/hover_extension.dart';

class NavBarLogo extends StatelessWidget {
  const NavBarLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      width: 150,
      child: Image.asset("assets/logo.png"),
    ).showClickOnHover;
  }
}
