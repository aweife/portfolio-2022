import 'package:flutter/material.dart';
import 'package:portfolio2022/locator.dart';
import 'package:portfolio2022/models/data/nav_bar_item_model.dart';
import 'package:portfolio2022/services/navigation_service.dart';
import 'package:portfolio2022/widgets/nav_bar_item/nav_bar_item_mobile.dart';
import 'package:portfolio2022/widgets/nav_bar_item/nav_bar_item_tablet_desktop.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio2022/extensions/hover_extensions.dart';

class NavBarItem extends StatelessWidget {
  final String title;
  final String navigationPath;
  final IconData? iconData;

  const NavBarItem(
      {super.key,
      required this.title,
      required this.navigationPath,
      this.iconData});

  @override
  Widget build(BuildContext context) {
    var model = NavBarItemModel(
      title: title,
      navigationPath: navigationPath,
      iconData: iconData,
    );

    return GestureDetector(
      onTap: () {
        // Don't ever use a service directly in the UI to change any state
        // Services should only be used from a view model
        locator<NavigationService>().navigateTo(navigationPath);
      },
      child: Provider.value(
        value: model,
        child: ScreenTypeLayout(
          tablet: const NavBarItemTabletDesktop(),
          mobile: const NavBarItemMobile(),
        ).showClickOnHover.moveUpOnHover,
      ),
    );
  }
}
