import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/call_to_action/call_to_action_mobile.dart';
import 'package:portfolio2022/widgets/call_to_action/call_to_action_tablet_desktop.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:portfolio2022/extensions/hover_extensions.dart';

class CallToAction extends StatelessWidget {
  final String title;

  const CallToAction({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: CallToActionMobile(title: title),
      tablet: CallToActionTabletDesktop(title: title),
    ).showClickOnHover.moveUpOnHover;
  }
}
