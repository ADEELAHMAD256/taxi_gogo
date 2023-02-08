import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  RxBool isPasswordHide = true.obs;
  TextEditingController emailControllerL = TextEditingController();
  TextEditingController passwordControllerL = TextEditingController();
}
