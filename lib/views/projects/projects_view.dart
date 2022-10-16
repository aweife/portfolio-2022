import 'package:flutter/material.dart';
import 'package:portfolio2022/models/data/page_header_item_model.dart';
import 'package:portfolio2022/models/views/projects_view_model.dart';
import 'package:portfolio2022/widgets/page_header/page_header.dart';
import 'package:portfolio2022/widgets/projects_list/projects_list.dart';
import 'package:stacked/stacked.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectsViewModel>.reactive(
      viewModelBuilder: () => ProjectsViewModel(),
      onModelReady: (model) => model.getProjects(),
      builder: (context, model, child) => SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            const SizedBox(height: 100),
            PageHeader(
              model: PageHeaderItemModel(
                title: "Projects",
                description: "Here are some of my recent projects.",
              ),
            ),
            const SizedBox(height: 50),
            model.projects == null
                ? const CircularProgressIndicator()
                : ProjectsList(projects: model.projects),
          ],
        ),
      ),
    );
  }
}
