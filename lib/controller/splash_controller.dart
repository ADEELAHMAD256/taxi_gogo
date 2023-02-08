import 'dart:async';

import 'package:get/get.dart';
import 'package:taxi_gogo/view/auth_screens/sign_in/sign_in_sreen.dart';

class SplashController extends GetxController {
  String image = "assets/images/logo.png";
  @override
  void onReady() {
    super.onReady();
    Timer(Duration(seconds: 3), () => Get.off(SignInScreen()));
  }
}
