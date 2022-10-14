import 'package:flutter/material.dart';
import 'package:portfolio2022/models/project_item_model.dart';
import 'package:portfolio2022/widgets/projects_list/project_item.dart';

List<ProjectItemModel> projects = <ProjectItemModel>[
  ProjectItemModel(
      title: "Rapid Ride Fight!",
      caption:
          "3D capture-the-flag, multiplayer boat fighting, with smart AI and water graphics",
      imageUrl: "assets/logo.png"),
  ProjectItemModel(
      title: "Glowing Under",
      caption:
          "2D platformer with a focus on puzzle-solving, no-death exploration and storytelling",
      imageUrl: "assets/logo.png"),
  ProjectItemModel(
      title: "BeatBox",
      caption:
          "2D bullet hell game played in the terminal console that uses music to sync movements",
      imageUrl: "assets/logo.png"),
];

class ProjectsList extends StatelessWidget {
  const ProjectsList({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 30,
      runSpacing: 30,
      children: <Widget>[
        ...projects.map(
          (project) => ProjectItem(model: project),
        )
      ],
    );
  }
}
