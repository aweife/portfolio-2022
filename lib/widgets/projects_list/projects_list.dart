import 'package:flutter/material.dart';
import 'package:portfolio2022/models/data/project_item_model.dart';
import 'package:portfolio2022/widgets/projects_list/project_item.dart';

class ProjectsList extends StatelessWidget {
  final List<ProjectItemModel>? projects;

  const ProjectsList({super.key, required this.projects});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...projects!.map(
          (project) => ProjectItem(model: project),
        )
      ],
    );
  }
}
