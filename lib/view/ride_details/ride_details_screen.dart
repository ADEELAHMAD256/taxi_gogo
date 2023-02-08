import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:taxi_gogo/components/custom_card.dart';
import 'package:taxi_gogo/components/custom_text.dart';
import 'package:taxi_gogo/const/app_color.dart';
import 'package:get/get.dart';

import '../job_preview/job_preview_screen.dart';

class RideDetailsScreen extends StatelessWidget {
  const RideDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.kBlackColor,
        // toolbarHeight: 100.h,
        centerTitle: true,
        elevation: 0,
        leading: Icon(Icons.arrow_back_ios),
        title: CustomText(
          text: "Ride Details",
          fontSize: 20.sp,
          fontColor: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 20.h),
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(width: 70.w),
                  CustomText(
                    text: "Reference #",
                    fontSize: 18.sp,
                    // fontWeight: FontWeight.bold,
                  ),
                  CustomText(
                    text: "nj7fs5",
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    fontColor: AppColors.kGreenColor,
                  ),
                  SizedBox(width: 70.w),
                ],
              ),
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "GBP : 140",
                  fontSize: 20.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.kRedColor,
                ),
                CustomText(
                  text: "Paid",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.kGreenColor,
                ),
              ],
            ),
            SizedBox(height: 20.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Muhammad Numan",
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.kRedColor,
                ),
                CustomText(
                  text: "03074900215",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
            Divider(height: 20.h, color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Pickup Date",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.kBlackColor,
                ),
                CustomText(
                  text: "19-01-2023",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
            Divider(height: 20.h, color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Pickup Time",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.kBlackColor,
                ),
                CustomText(
                  text: "18 : 30",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
            Divider(height: 20.h, color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Passengers:",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.kBlackColor,
                ),
                CustomText(
                  text: "2",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
            Divider(height: 20.h, color: Colors.black),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomText(
                  text: "Luggage:",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.kBlackColor,
                ),
                CustomText(
                  text: "2",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
            Divider(height: 20.h, color: Colors.black),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: "Comments",
                  fontSize: 16.sp,
                  fontWeight: FontWeight.bold,
                  fontColor: AppColors.kBlackColor,
                ),
                SizedBox(height: 10.h),
                SizedBox(
                  width: 335.w,
                  child: CustomText(
                    text:
                        "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,",
                    fontSize: 12.sp,
                    fontWeight: FontWeight.bold,
                    fontColor: AppColors.kBlackColor,
                  ),
                ),
                SizedBox(height: 20.h),
                CustomCard(
                  width: double.maxFinite,
                  cardColor: Colors.white,
                  borderRadius: BorderRadius.circular(20.r),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        spreadRadius: 0.2,
                        blurRadius: 15)
                  ],
                  cardChild: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 25.h),
                    child: IntrinsicHeight(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 20.r,
                                color: AppColors.kGreenColor,
                              ),
                              SizedBox(
                                width: 250.w,
                                child: CustomText(
                                  text: "Imtiaz Super Market - Lahore",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          Column(
                            children: List.generate(
                              3,
                              (ii) => Padding(
                                  padding: EdgeInsets.only(
                                      left: 8.w,
                                      right: 12.w,
                                      top: 5.h,
                                      bottom: 5.h),
                                  child: Container(
                                    height: 3,
                                    width: 2,
                                    color: Colors.grey,
                                  )),
                            ),
                          ),
                          Expanded(
                            child: Container(
                              color: Colors.grey.withAlpha(60),
                              height: 0.5,
                              padding: EdgeInsets.only(
                                left: 10.w,
                                right: 20.w,
                              ),
                            ),
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.location_on,
                                size: 20.r,
                                color: Colors.black.withOpacity(0.5),
                              ),
                              SizedBox(
                                width: 250.w,
                                child: CustomText(
                                  text:
                                      "5-K Main Boulevard Gulberg, Block Gulberg 2, Lahore, Punjab",
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 10.h),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 100.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomButton(
                        height: 40.h,
                        width: 150.w,
                        buttonColor: AppColors.kPrimaryColor,
                        borderRadius: BorderRadius.circular(10),
                        onTap: () => Get.to(JobPreview()),
                        child: Center(
                          child: CustomText(
                            text: "Accept",
                            fontSize: 16.sp,
                            fontWeight: FontWeight.bold,
                            fontColor: AppColors.kBlackColor,
                          ),
                        )),
                    CustomButton(
                      height: 40.h,
                      width: 150.w,
                      buttonColor: AppColors.kGrayColor,
                      borderRadius: BorderRadius.circular(10),
                      child: Center(
                        child: CustomText(
                          text: "Reject",
                          fontSize: 16.sp,
                          fontWeight: FontWeight.bold,
                          fontColor: AppColors.kBlackColor,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.h),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
