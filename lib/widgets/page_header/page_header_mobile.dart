import 'package:flutter/material.dart';
import 'package:portfolio2022/models/data/page_header_item_model.dart';
import 'package:portfolio2022/styles/text_styles.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:stacked/stacked.dart';

class PageHeaderMobile extends ViewModelWidget<PageHeaderItemModel> {
  const PageHeaderMobile({super.key});

  @override
  Widget build(BuildContext context, PageHeaderItemModel viewModel) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) => Column(
        children: <Widget>[
          Text(
            viewModel.title,
            style: titleTextStyle(sizingInformation.deviceScreenType),
          ),
          const SizedBox(width: 50),
          Text(
            viewModel.description,
            style: descriptionTextStyle(sizingInformation.deviceScreenType),
          )
        ],
      ),
    );
  }
}
