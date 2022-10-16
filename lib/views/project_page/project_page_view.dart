import 'package:flutter/material.dart';
import 'package:portfolio2022/models/views/project_page_view_model.dart';
import 'package:stacked/stacked.dart';

class ProjectPageView extends StatelessWidget {
  final int? id;

  const ProjectPageView({super.key, this.id});

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<ProjectPageViewModel>.reactive(
      viewModelBuilder: () => ProjectPageViewModel(),
      onModelReady: (model) => model.getProjectData(id),
      builder: (context, model, child) => Center(
        child: Column(
          children: <Widget>[
            model.project == null
                ? Container()
                : SizedBox(
                    height: 320,
                    child: Image.asset(
                      model.project!.imageUrl!,
                      fit: BoxFit.cover,
                    ),
                  ),
            model.project == null
                ? const CircularProgressIndicator()
                : Text(
                    model.project!.title,
                    style: const TextStyle(fontSize: 60),
                  ),
          ],
        ),
      ),
    );
  }
}
