import 'package:flutter/material.dart';
import 'package:portfolio2022/locator.dart';
import 'package:portfolio2022/models/data/project_item_model.dart';
import 'package:portfolio2022/services/api_service.dart';

class ProjectPageViewModel extends ChangeNotifier {
  final ApiService _api = locator<ApiService>();

  ProjectItemModel? _project;

  ProjectItemModel? get project => _project;

  Future getProjectData(int? id) async {
    var response = await _api.getProject(id);

    if (response is String) {
      _project = ProjectItemModel(title: response);
    } else {
      _project = response;
    }

    notifyListeners();
  }
}
