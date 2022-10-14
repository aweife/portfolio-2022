import 'package:flutter/material.dart';
import 'package:portfolio2022/widgets/projects_header/projects_header.dart';
import 'package:portfolio2022/widgets/projects_list/projects_list.dart';

class ProjectsView extends StatelessWidget {
  const ProjectsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: const <Widget>[
          SizedBox(height: 100),
          ProjectHeader(),
          SizedBox(height: 50),
          ProjectsList(),
        ],
      ),
    );
  }
}
