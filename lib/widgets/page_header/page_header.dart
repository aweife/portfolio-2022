import 'package:flutter/material.dart';
import 'package:portfolio2022/models/page_details_model.dart';
import 'package:portfolio2022/widgets/page_header/page_header_desktop.dart';
import 'package:portfolio2022/widgets/page_header/page_header_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class PageHeader extends StatelessWidget {
  final PageDetailsModel details;

  const PageHeader({super.key, required this.details});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: PageHeaderDesktop(details: details),
      tablet: PageHeaderDesktop(details: details),
      mobile: PageHeaderMobile(details: details),
    );
  }
}
