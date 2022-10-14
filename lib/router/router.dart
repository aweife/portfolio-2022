import 'package:flutter/material.dart';
import 'package:portfolio2022/router/route_names.dart';
import 'package:portfolio2022/views/about/about_view.dart';
import 'package:portfolio2022/views/home/home_view.dart';
import 'package:portfolio2022/views/projects/projects_view.dart';

Route<dynamic>? generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case homeRoute:
      return _getPageRoute(const HomeView());
    case aboutRoute:
      return _getPageRoute(const AboutView());
    case projectsRoute:
      return _getPageRoute(const ProjectsView());
    default:
      return null;
  }
}

PageRoute _getPageRoute(Widget child) {
  return _FadeRoute(child: child);
}

class _FadeRoute extends PageRouteBuilder {
  final Widget child;

  _FadeRoute({required this.child})
      : super(
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
