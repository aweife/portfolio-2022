import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio2022/widgets/welcome_message/welcome_message.dart';

class HomeContentMobile extends StatelessWidget {
  const HomeContentMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: const <Widget>[
        WelcomeMessage(),
        SizedBox(height: 100),
        CallToAction(title: "Download CV"),
      ],
    );
  }
}
