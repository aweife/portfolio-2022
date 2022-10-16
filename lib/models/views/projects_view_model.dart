import 'package:flutter/material.dart';
import 'package:portfolio2022/locator.dart';
import 'package:portfolio2022/models/data/project_item_model.dart';
import 'package:portfolio2022/services/api_service.dart';

class ProjectsViewModel extends ChangeNotifier {
  final _api = locator<ApiService>();

  List<ProjectItemModel>? _projects;
  List<ProjectItemModel>? get projects => _projects;

  Future getProjects() async {
    var results = await _api.getProjects();

    if (results is String) {
      // Show error
    } else {
      _projects = results;
    }

    notifyListeners();
  }

  // final projects = <ProjectItemModel>[
  //   ProjectItemModel(
  //       title: "Rapid Ride Fight!",
  //       caption:
  //           "3D capture-the-flag, multiplayer boat fighting, with smart AI and water graphics",
  //       imageUrl: "assets/logo.png"),
  //   ProjectItemModel(
  //       title: "Glowing Under",
  //       caption:
  //           "2D platformer with a focus on puzzle-solving, no-death exploration and storytelling",
  //       imageUrl: "assets/logo.png"),
  //   ProjectItemModel(
  //       title: "BeatBox",
  //       caption:
  //           "2D bullet hell game played in the terminal console that uses music to sync movements",
  //       imageUrl: "assets/logo.png"),
  // ];
}
