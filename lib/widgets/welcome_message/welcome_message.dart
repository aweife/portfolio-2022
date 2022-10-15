import 'package:flutter/material.dart';
import 'package:portfolio2022/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        var textAlignment =
            sizingInformation.deviceScreenType == DeviceScreenType.desktop
                ? TextAlign.left
                : TextAlign.center;

        return SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "HI, MY NAME IS\nANG WEI FENG TED",
                style: titleTextStyle(sizingInformation.deviceScreenType),
                textAlign: textAlignment,
              ),
              const SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  text:
                      "I'm a software engineer specializing in full-stack applications. Currently, I'm focused on building both frontend and backend services over at the blockchain team at ",
                  style:
                      descriptionTextStyle(sizingInformation.deviceScreenType),
                  children: <TextSpan>[
                    TextSpan(
                      text: "DBS Bank.",
                      style: descriptionTextStyle(
                          sizingInformation.deviceScreenType),
                    )
                  ],
                ),
                textAlign: textAlignment,
              ),
            ],
          ),
        );
      },
    );
  }
}
