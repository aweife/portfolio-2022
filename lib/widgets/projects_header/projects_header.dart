import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/projects_header/projects_header_desktop.dart';
import 'package:portfolio2022/widgets/projects_header/projects_header_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class ProjectHeader extends StatelessWidget {
  const ProjectHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: const ProjectHeaderDesktop(),
      mobile: const ProjectHeaderMobile(),
    );
  }
}
