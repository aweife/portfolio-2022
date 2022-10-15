import 'package:flutter/material.dart';
import 'package:portfolio2022/models/page_details_model.dart';
import 'package:portfolio2022/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PageHeaderDesktop extends StatelessWidget {
  final PageDetailsModel details;

  const PageHeaderDesktop({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            details.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          const SizedBox(width: 50),
          Expanded(
            child: Text(
              details.description,
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          )
        ],
      ),
    );
  }
}
