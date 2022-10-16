import 'package:flutter/material.dart';

class NavigationService {
  final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

  Future<dynamic>? navigateTo(String routeName,
      {Map<String, String>? queryParameters}) {
    if (queryParameters != null) {
      routeName = Uri(
        path: routeName,
        queryParameters: queryParameters,
      ).toString();
    }

    return navigatorKey.currentState?.pushNamed(routeName);
  }

  void goBack() {
    return navigatorKey.currentState?.pop();
  }
}
