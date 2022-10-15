import 'package:flutter/material.dart';
import 'package:portfolio2022/models/page_details_model.dart';
import 'package:portfolio2022/widgets/page_header/page_header.dart';
import 'package:portfolio2022/widgets/projects_list/projects_list.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(height: 100),
          PageHeader(
            details: PageDetailsModel(
              title: "Projects",
              description: "Here are some of my recent projects.",
            ),
          ),
          const SizedBox(height: 50),
          const ProjectsList(),
        ],
      ),
    );
  }
}
