import 'package:get/get.dart';
import 'package:xgrid_test/Screens/Home/View/home.dart';
part 'app_routes.dart';

class AppPages {
  AppPages._();
  static const initial = Routes.homeScreen;
  static final routes = [
    GetPage(
      name: _Paths.homeScreen,
      page: () => Home(),
    ),
  ];
}
