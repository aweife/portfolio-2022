import 'package:flutter/material.dart';
import 'package:portfolio2022/routes/route_names.dart';
import 'package:portfolio2022/views/about/about_view.dart';
import 'package:portfolio2022/views/home/home_view.dart';
import 'package:portfolio2022/views/project_page/project_page_view.dart';
import 'package:portfolio2022/views/projects/projects_view.dart';
import "package:portfolio2022/extensions/string_extensions.dart";

Route<dynamic>? generateRoute(RouteSettings settings) {
  var routeModel = settings.name.getRouteModel;

  switch (routeModel.route) {
    case homeRoute:
      return _getPageRoute(const HomeView(), settings);
    case aboutRoute:
      return _getPageRoute(const AboutView(), settings);
    case projectsRoute:
      return _getPageRoute(const ProjectsView(), settings);
    case projectPageRoute:
      var id = int.tryParse(routeModel["id"]);
      return _getPageRoute(ProjectPageView(id: id), settings);
    default:
      return _getPageRoute(const HomeView(), settings);
  }
}

PageRoute _getPageRoute(Widget child, RouteSettings settings) {
  return _FadeRoute(child: child, routeName: settings.name);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;
  final String? routeName;

  _FadeRoute({required this.child, this.routeName})
      : super(
          settings: RouteSettings(name: routeName),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) =>
              child,
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) =>
              FadeTransition(
            opacity: animation,
            child: child,
          ),
        );
}
