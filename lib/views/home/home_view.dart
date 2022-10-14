import 'package:flutter/material.dart';
import 'package:portfolio2022/views/home/home_content_desktop.dart';
import 'package:portfolio2022/views/home/home_content_mobile.dart';
import 'package:portfolio2022/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio2022/widgets/centered_view/centered_view.dart';
import 'package:portfolio2022/widgets/nav_drawer/nav_drawer.dart';
import 'package:portfolio2022/widgets/nav_bar/nav_bar.dart';
import 'package:portfolio2022/widgets/welcome_message/welcome_message.dart';
import 'package:responsive_builder/responsive_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
                  child: ScreenTypeLayout(
                mobile: const HomeContentMobile(),
                desktop: const HomeContentDesktop(),
              ))
            ],
          ),
        ),
      ),
    );
  }
}
