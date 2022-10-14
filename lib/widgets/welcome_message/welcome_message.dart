import 'package:flutter/material.dart';

class WelcomeMessage extends StatelessWidget {
  const WelcomeMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 600,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            "HI, MY NAME IS\nANG WEI FENG TED",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              height: 0.9,
              fontSize: 60,
            ),
          ),
          const SizedBox(height: 30),
          RichText(
            text: const TextSpan(
              text:
                  "I'm a software engineer specializing in full-stack applications. Currently, I'm focused on building both frontend and backend services over at the blockchain team at ",
              style: TextStyle(
                height: 1.7,
                fontSize: 21,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: "DBS Bank.",
                  style: TextStyle(
                    height: 1.7,
                    fontSize: 21,
                    fontWeight: FontWeight.bold,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
