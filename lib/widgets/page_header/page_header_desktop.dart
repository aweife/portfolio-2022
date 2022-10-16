import 'package:flutter/material.dart';
import 'package:portfolio2022/models/data/page_header_item_model.dart';
import 'package:portfolio2022/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class PageHeaderDesktop extends ViewModelWidget<PageHeaderItemModel> {
  const PageHeaderDesktop({super.key});

  @override
  Widget build(BuildContext context, PageHeaderItemModel viewModel) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            viewModel.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          const SizedBox(width: 50),
          Expanded(
            child: Text(
              viewModel.description,
              style: descriptionTextStyle(sizingInformation.deviceScreenType),
            ),
          )
        ],
      ),
    );
  }
}
