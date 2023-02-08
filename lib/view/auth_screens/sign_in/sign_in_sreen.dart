import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:taxi_gogo/components/custom_card.dart';
import 'package:taxi_gogo/components/custom_text.dart';
import 'package:taxi_gogo/const/app_color.dart';
import 'package:taxi_gogo/controller/auth_controller.dart';
import 'package:taxi_gogo/view/home/home_screen.dart';

import '../../../components/custom_text_feild.dart';

class SignInScreen extends GetView<AuthController> {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 75.h),
            Image.asset("assets/images/car_red.png"),
            SizedBox(height: 60.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    text: "Hi, Welcome To Taxigogo \nDriver app",
                    fontSize: 23.sp,
                    fontWeight: FontWeight.w700,
                  ),
                  SizedBox(height: 10.h),
                  CustomText(
                    text: "Login in to your account",
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    fontColor: Colors.black.withOpacity(0.5),
                  ),
                  SizedBox(height: 20.h),
                  CustomText(
                    text: "Email",
                    fontSize: 16.sp,
                    fontColor: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                  CustomTextFieldWithoutIcon(
                    hintText: 'Enter your Email Here ',
                    controller: controller.emailControllerL,
                  ),
                  SizedBox(height: 20.h),
                  CustomText(
                    text: "Password",
                    fontSize: 16.sp,
                    fontColor: Colors.black,
                    // fontWeight: FontWeight.bold,
                  ),
                  Obx(
                    () => CustomPasswordTextField(
                      hintText: "Password",
                      controller: controller.passwordControllerL,
                      icon: Icons.lock,
                      obscureText: controller.isPasswordHide.value,
                      hideIcon: InkWell(
                        onTap: () {
                          controller.isPasswordHide.value =
                              !controller.isPasswordHide.value;
                        },
                        child: Icon(
                          controller.isPasswordHide.value
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: Colors.black.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    height: 45.h,
                    width: double.maxFinite,
                    buttonColor: AppColors.kPrimaryColor,
                    onTap: () => Get.to(HomeScreen()),
                    child: Center(
                      child: CustomText(
                        text: "Log In",
                        fontSize: 16.sp,
                        fontColor: Colors.black,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                  Center(
                    child: CustomText(
                      text: "OR",
                      // fontWeight: FontWeight.bold,
                      fontSize: 16.sp,
                    ),
                  ),
                  SizedBox(height: 20.h),
                  CustomButton(
                    height: 45.h,
                    width: double.maxFinite,
                    buttonColor: AppColors.kBlackColor,
                    child: Center(
                      child: CustomText(
                        text: "Become a Driver",
                        fontSize: 16.sp,
                        fontColor: AppColors.kPrimaryColor,
                        // fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
