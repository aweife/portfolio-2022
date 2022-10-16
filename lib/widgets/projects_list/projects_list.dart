import 'package:flutter/material.dart';
import 'package:portfolio2022/models/data/project_item_model.dart';
import 'package:portfolio2022/models/views/projects_list_view_model.dart';
import 'package:portfolio2022/widgets/projects_list/project_item.dart';
import 'package:stacked/stacked.dart';

class ProjectsList extends StatelessWidget {
  final List<ProjectItemModel>? projects;

  const ProjectsList({super.key, this.projects});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => ProjectsListViewModel(),
      builder: (context, model, child) => Wrap(
        spacing: 30,
        runSpacing: 30,
        children: <Widget>[
          ...?projects
              ?.asMap()
              .map(
                (index, project) => MapEntry(
                  index,
                  GestureDetector(
                    onTap: () => model.navigateToProject(index),
                    child: ProjectItem(model: project),
                  ),
                ),
              )
              .values
              .toList(),
        ],
      ),
    );
  }
}
