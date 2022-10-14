import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio2022/widgets/centered_view/centered_view.dart';
import 'package:portfolio2022/widgets/nav_bar/nav_bar.dart';
import 'package:portfolio2022/widgets/welcome_message/welcome_message.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CenteredView(
        child: Column(
          children: <Widget>[
            const NavBar(),
            Expanded(
              child: Row(
                children: const <Widget>[
                  WelcomeMessage(),
                  Expanded(
                    child: Center(
                      child: CallToAction(title: "Download CV"),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
