import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_toggle_tab/flutter_toggle_tab.dart';
import 'package:get/get.dart';
import 'package:taxi_gogo/components/custom_text.dart';
import 'package:taxi_gogo/const/app_color.dart';
import 'package:taxi_gogo/controller/home_controller.dart';
import '../../components/custom_card.dart';
import '../../components/drawer/drawer_widget.dart';
import '../ride_details/ride_details_screen.dart';

class HomeScreen extends GetView<HomeController> {
  HomeScreen({Key? key}) : super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldState = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      key: _scaffoldState,
      drawer: Drawer(
        width: 250.w,
        child: Column(
          children: [
            Container(
              height: 206.h,
              width: MediaQuery.of(context).size.width,
              color: AppColors.kBlackColor,
              child: Center(
                child: Image.asset(
                  "",
                  height: 88.h,
                  width: 167.w,
                ),
              ),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              key: UniqueKey(),
              child: Column(
                children: [
                  SizedBox(height: 25.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        CustomCard(
                          height: 40.h,
                          width: 40.w,
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(color: Colors.black12),
                          cardChild: Builder(builder: (context) {
                            return IconButton(
                              padding: EdgeInsets.zero,
                              onPressed: () =>
                                  Scaffold.of(context).openDrawer(),
                              icon: Icon(
                                Icons.format_list_bulleted_sharp,
                                size: 22.r,
                              ),
                            );
                          }),
                        ),
                        CustomCard(
                          border: Border.all(color: Colors.black),
                          borderRadius: BorderRadius.circular(100.r),
                          cardChild: Obx(
                            () => FlutterToggleTab(
                              width: 50.w,
                              height: 40.h,
                              selectedIndex:
                                  controller.tabTextIndexSelected.value,
                              selectedBackgroundColors: const [
                                AppColors.kPrimaryColor,
                                AppColors.kPrimaryColor,
                              ],
                              selectedTextStyle:
                                  const TextStyle(color: Colors.white),
                              unSelectedBackgroundColors: const [Colors.white],
                              unSelectedTextStyle:
                                  const TextStyle(color: Colors.black),
                              labels: controller.listTextTabToggle,
                              selectedLabelIndex: (index) =>
                                  controller.toggle(index),
                              isScroll: false,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.notifications,
                          size: 30.r,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10.h),
                ],
              ),
            ),
            SliverAppBar(
              backgroundColor: Colors.white,
              automaticallyImplyLeading: false,
              pinned: true,
              titleSpacing: 0,
              title: SizedBox(
                height: 70.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  itemCount: controller.ridesList.length,
                  itemBuilder: (context, index) {
                    return Obx(
                      () => Row(
                        children: [
                          SizedBox(width: 15.w),
                          InkWell(
                            onTap: () {
                              controller.selectedIndex.value = index;
                            },
                            child: CustomCard(
                              height: 36.h,
                              width: 134.w,
                              borderRadius: BorderRadius.circular(10.r),
                              border: Border.all(color: AppColors.kBorderColor),
                              cardColor: controller.selectedIndex.value == index
                                  ? AppColors.kPrimaryColor
                                  : Colors.white,
                              cardChild: Center(
                                child: CustomText(
                                  text: controller.ridesList[index],
                                  fontSize: 12.sp,
                                  fontColor:
                                      controller.selectedIndex.value == index
                                          ? Colors.white
                                          : Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                          // SizedBox(width: 5.w),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            Obx(
              () => SliverToBoxAdapter(
                key: UniqueKey(),
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 20.w, vertical: 20),
                    child: controller.selectedIndex.value == 0
                        ? rideRequest()
                        : controller.selectedIndex.value == 1
                            ? runningRides()
                            : upcomingRides()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Wrap rideRequest() {
    return Wrap(
      spacing: 10.h,
      children: List.generate(
        controller.data.rideRequestData.rideRequestList.length,
        (index) => Column(
          children: [
            InkWell(
              onTap: () => Get.to(RideDetailsScreen()),
              child: CustomCard(
                width: double.maxFinite,
                cardColor: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0.2,
                      blurRadius: 15)
                ],
                cardChild: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CustomText(
                                text: "Reference # ",
                                fontSize: 18.sp,
                              ),
                              CustomText(
                                text: controller.data.rideRequestData
                                        .rideRequestList[index].ref ??
                                    "",
                                fontSize: 18.sp,
                                fontWeight: FontWeight.bold,
                              ),
                            ],
                          ),
                          Icon(
                            Icons.more_horiz,
                            size: 40.r,
                            color: AppColors.kPrimaryColor,
                          )
                        ],
                      ),
                      Divider(height: 10.h, color: Colors.black),
                      SizedBox(height: 15.h),
                      CustomText(
                        text: controller
                            .data.rideRequestData.rideRequestList[index].name,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w500,
                        fontColor: AppColors.kRedColor,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20.r,
                            color: AppColors.kGreenColor,
                          ),
                          CustomText(
                            text: controller.data.rideRequestData
                                .rideRequestList[index].pickUpLocation,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20.r,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          CustomText(
                            text: controller.data.rideRequestData
                                .rideRequestList[index].dropLocation,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      CustomText(
                        text:
                            "Pickup Time:  ${controller.data.rideRequestData.rideRequestList[index].time}",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 10.h),
                      CustomText(
                        text:
                            "GDP:  ${controller.data.rideRequestData.rideRequestList[index].gdp}",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        fontColor: AppColors.kRedColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Wrap upcomingRides() {
    return Wrap(
      spacing: 10.h,
      children: List.generate(
        controller.data.rideRequestData.rideRequestList.length,
        (index) => Column(
          children: [
            InkWell(
              onTap: () => Get.to(RideDetailsScreen()),
              child: CustomCard(
                width: double.maxFinite,
                cardColor: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0.2,
                      blurRadius: 15)
                ],
                cardChild: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text:
                                "Reference # ${controller.data.rideRequestData.rideRequestList[index].ref ?? ""}",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          Icon(
                            Icons.more_horiz,
                            size: 40.r,
                            color: AppColors.kPrimaryColor,
                          )
                        ],
                      ),
                      Divider(height: 10.h, color: Colors.black),
                      SizedBox(height: 15.h),
                      CustomText(
                        text: controller
                            .data.rideRequestData.rideRequestList[index].name,
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        fontColor: AppColors.kRedColor,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20.r,
                            color: AppColors.kGreenColor,
                          ),
                          CustomText(
                            text: controller.data.rideRequestData
                                .rideRequestList[index].pickUpLocation,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20.r,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          CustomText(
                            text: controller.data.rideRequestData
                                .rideRequestList[index].dropLocation,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      CustomText(
                        text:
                            "Pickup Time:  ${controller.data.rideRequestData.rideRequestList[index].time}",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 10.h),
                      CustomText(
                        text:
                            "GDP:  ${controller.data.rideRequestData.rideRequestList[index].gdp}",
                        fontSize: 18.sp,
                        fontWeight: FontWeight.bold,
                        fontColor: AppColors.kRedColor,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }

  Wrap runningRides() {
    return Wrap(
      spacing: 10.h,
      children: List.generate(
        controller.data.rideRequestData.rideRequestList.length,
        (index) => Column(
          children: [
            InkWell(
              onTap: () => Get.to(RideDetailsScreen()),
              child: CustomCard(
                width: double.maxFinite,
                cardColor: Colors.white,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 0.2,
                      blurRadius: 15)
                ],
                cardChild: Padding(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text:
                                "Reference # ${controller.data.rideRequestData.rideRequestList[index].ref ?? ""}",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          Icon(
                            Icons.more_horiz,
                            size: 40.r,
                            color: AppColors.kPrimaryColor,
                          )
                        ],
                      ),
                      Divider(height: 10.h, color: Colors.black),
                      SizedBox(height: 15.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: controller.data.rideRequestData
                                .rideRequestList[index].name,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text:
                                "GDP:  ${controller.data.rideRequestData.rideRequestList[index].gdp}",
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            fontColor: AppColors.kRedColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 15.h),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20.r,
                            color: AppColors.kGreenColor,
                          ),
                          SizedBox(width: 10.w),
                          CustomText(
                            text: controller.data.rideRequestData
                                .rideRequestList[index].pickUpLocation,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            size: 20.r,
                            color: Colors.black.withOpacity(0.5),
                          ),
                          SizedBox(width: 10.w),
                          CustomText(
                            text: controller.data.rideRequestData
                                .rideRequestList[index].dropLocation,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ],
                      ),
                      SizedBox(height: 10.h),
                      CustomText(
                        text:
                            "Pickup Time:  ${controller.data.rideRequestData.rideRequestList[index].time}",
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold,
                      ),
                      SizedBox(height: 10.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomText(
                            text: "PickUp: 3.5km",
                            fontSize: 12.sp,
                            fontWeight: FontWeight.bold,
                          ),
                          CustomText(
                            text: "Accepted",
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                            fontColor: AppColors.kGreenColor,
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    );
  }
}
