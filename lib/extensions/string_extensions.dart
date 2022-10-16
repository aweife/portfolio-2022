import 'package:portfolio2022/models/data/route_item_model.dart';

extension StringExtensions on String? {
  RouteItemModel get getRouteModel {
    var uri = Uri.parse(this!);
    //print("queryParameters: ${uri.queryParameters} path: ${uri.path}");

    return RouteItemModel(
      route: uri.path,
      queryParameters: uri.queryParameters,
    );
  }
}
