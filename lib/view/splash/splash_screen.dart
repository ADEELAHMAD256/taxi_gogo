import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:taxi_gogo/controller/splash_controller.dart';

import '../../const/app_color.dart';

class SplashScreen extends GetView<SplashController> {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.kBlackColor,
      body: Center(
        child: Image.asset(controller.image),
      ),
    );
  }
}
