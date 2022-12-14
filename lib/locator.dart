import 'package:get_it/get_it.dart';
import 'package:portfolio2022/services/api_service.dart';
import 'package:portfolio2022/services/navigation_service.dart';

GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => ApiService());
}
