import 'package:get/get.dart';
import 'package:taxi_gogo/controller/auth_controller.dart';
import 'package:taxi_gogo/controller/splash_controller.dart';

import '../controller/home_controller.dart';

Future<void> init() async {
  Get.lazyPut<SplashController>(() => SplashController());
  Get.lazyPut<AuthController>(() => AuthController());
  Get.lazyPut<HomeController>(() => HomeController());
}
