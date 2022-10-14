import 'package:flutter/material.dart';
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
        double titleSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 45
                : 60;
        double descSize =
            sizingInformation.deviceScreenType == DeviceScreenType.mobile
                ? 15
                : 20;

        return SizedBox(
          width: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "HI, MY NAME IS\nANG WEI FENG TED",
                style: TextStyle(
                  fontWeight: FontWeight.w800,
                  height: 0.9,
                  fontSize: titleSize,
                ),
                textAlign: textAlignment,
              ),
              const SizedBox(height: 30),
              RichText(
                text: TextSpan(
                  text:
                      "I'm a software engineer specializing in full-stack applications. Currently, I'm focused on building both frontend and backend services over at the blockchain team at ",
                  style: TextStyle(
                    height: 1.7,
                    fontSize: descSize,
                  ),
                  children: <TextSpan>[
                    TextSpan(
                      text: "DBS Bank.",
                      style: TextStyle(
                        height: 1.7,
                        fontSize: descSize,
                        fontWeight: FontWeight.bold,
                      ),
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
