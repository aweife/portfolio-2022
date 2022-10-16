import 'package:flutter/material.dart';
import 'package:portfolio2022/models/data/page_header_item_model.dart';
import 'package:portfolio2022/widgets/page_header/page_header_desktop.dart';
import 'package:portfolio2022/widgets/page_header/page_header_mobile.dart';
import 'package:provider/provider.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PageHeader extends StatelessWidget {
  final PageHeaderItemModel model;

  const PageHeader({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Provider.value(
      value: model,
      child: ScreenTypeLayout(
        desktop: const PageHeaderDesktop(),
        tablet: const PageHeaderDesktop(),
        mobile: const PageHeaderMobile(),
      ),
    );
  }
}
