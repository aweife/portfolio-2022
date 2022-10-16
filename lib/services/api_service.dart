import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:portfolio2022/models/data/project_item_model.dart';

class ApiService {
  static const String _baseUrl = "127.0.0.1:5500";

  Future<dynamic> getProjects() async {
    final url = Uri.http(_baseUrl, "api/projects.json");

    var response = await http.get(url);

    if (response.statusCode == 200) {
      var projects = (json.decode(response.body) as List)
          .map((project) => ProjectItemModel.fromJson(project))
          .toList();

      return projects;
    }

    // Response is not ok
    return "Could not fetch the projects data at this time.";
  }

  Future<dynamic> getProject(int? id) async {
    final url = Uri.http(_baseUrl, "api/project", {"id": "$id"});

    var response = await http.get(url);

    // print(
    //     "getEpisode | response: ${response.body} statusCode: ${response.statusCode}");

    if (response.statusCode == 200) {
      var project = ProjectItemModel.fromJson(json.decode(response.body));

      return project;
    }

    // Response is not ok
    return "Could not fetch project $id. Are you sure it exists?";
  }
}
