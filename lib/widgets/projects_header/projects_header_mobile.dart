import 'package:flutter/material.dart';
import 'package:portfolio2022/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectHeaderMobile extends StatelessWidget {
  const ProjectHeaderMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Column(
        children: <Widget>[
          Text(
            "PROJECTS",
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          const SizedBox(width: 50),
          Expanded(
            child: Text(
              "Here are some of my projects I have done in school",
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          )
        ],
      ),
    );
  }
}
