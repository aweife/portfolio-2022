import 'package:flutter/material.dart';
import 'package:portfolio2022/locator.dart';
import 'package:portfolio2022/routes/route_names.dart';
import 'package:portfolio2022/routes/router.dart';
import 'package:portfolio2022/services/navigation_service.dart';
import 'package:portfolio2022/widgets/centered_view/centered_view.dart';
import 'package:portfolio2022/widgets/nav_bar/nav_bar.dart';
import 'package:portfolio2022/widgets/nav_drawer/nav_drawer.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LayoutTemplate extends StatelessWidget {
  const LayoutTemplate({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Scaffold(
        drawer: sizingInformation.deviceScreenType == DeviceScreenType.mobile
            ? const NavDrawer()
            : null,
        backgroundColor: Colors.white,
        body: CenteredView(
          child: Column(
            children: <Widget>[
              const NavBar(),
              Expanded(
                child: Navigator(
                  key: locator<NavigationService>().navigatorKey,
                  onGenerateRoute: generateRoute,
                  initialRoute: homeRoute,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
