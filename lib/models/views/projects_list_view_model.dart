import 'package:flutter/material.dart';
import 'package:portfolio2022/locator.dart';
import 'package:portfolio2022/routes/route_names.dart';
import 'package:portfolio2022/services/navigation_service.dart';

class ProjectsListViewModel extends ChangeNotifier {
  final NavigationService _navigationService = locator<NavigationService>();

  void navigateToProject(int index) {
    _navigationService.navigateTo(
      projectPageRoute,
      queryParameters: {"id": index.toString()},
    );
  }
}
