import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:portfolio2022/models/data/project_item_model.dart';

class ApiService {
  static const String _baseUrl = "127.0.0.1:5500";
  static const String _path = "api/projects.json";

  Future<dynamic> getProjects() async {
    final fullUrl = Uri.http(_baseUrl, _path);
    var response = await http.get(fullUrl);

    if (response.statusCode == 200) {
      var projects = (json.decode(response.body) as List)
          .map((project) => ProjectItemModel.fromJson(project))
          .toList();

      return projects;
    }

    // Response is not ok
    return "Could not fetch the projects data at this time.";
  }
}
