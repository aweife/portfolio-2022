class RouteItemModel {
  final String route;
  final Map<String, String> _queryParameters;

  RouteItemModel({
    required this.route,
    required Map<String, String> queryParameters,
  }) : _queryParameters = queryParameters;

  // Override [] operator
  operator [](String key) => _queryParameters[key];
}
