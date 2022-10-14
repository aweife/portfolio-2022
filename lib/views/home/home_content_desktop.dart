import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/call_to_action/call_to_action.dart';
import 'package:portfolio2022/widgets/welcome_message/welcome_message.dart';

class HomeContentDesktop extends StatelessWidget {
  const HomeContentDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const <Widget>[
        WelcomeMessage(),
        Expanded(
          child: Center(
            child: CallToAction(title: "Download CV"),
          ),
        )
      ],
    );
  }
}
