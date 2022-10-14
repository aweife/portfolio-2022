import 'package:flutter/material.dart';
import 'package:portfolio2022/locator.dart';
import 'package:portfolio2022/services/navigation_service.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navPath;

  const NavBarItem({super.key, required this.title, required this.navPath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        // Don't ever use a service directly in the UI to change any state
        // Services should only be used from a view model
        locator<NavigationService>().navigateTo(navPath);
      },
      child: Text(
        title,
        style: const TextStyle(fontSize: 18),
      ),
    );
  }
}
