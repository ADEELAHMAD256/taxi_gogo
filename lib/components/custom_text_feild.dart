import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? icon;
  final TextInputType? textInputType;

  const CustomTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.icon,
      this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 20.w, right: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextField(
        keyboardType: textInputType,
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: const Color(0xff677294).withOpacity(0.16),
                )),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: const Color(0xff677294).withOpacity(0.16),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: const Color(0xff677294).withOpacity(0.16),
              ),
            ),
            contentPadding: EdgeInsets.symmetric(horizontal: 20.w),
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: "Montserrat-VariableFont",
                color: const Color(0xff677294),
                fontWeight: FontWeight.w300,
                fontSize: 16.sp)),
      ),
    );
  }
}

class CustomPasswordTextField extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  final IconData? icon;
  final TextInputType? textInputType;
  final bool? obscureText;
  final Widget? hideIcon;
  const CustomPasswordTextField(
      {Key? key,
      required this.hintText,
      required this.controller,
      this.hideIcon,
      this.icon,
      this.obscureText,
      this.textInputType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextField(
        keyboardType: textInputType,
        controller: controller,
        obscureText: obscureText!,
        decoration: InputDecoration(
          suffixIcon: hideIcon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: const Color(0xff677294).withOpacity(0.16),
              )),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: const Color(0xff677294).withOpacity(0.16),
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12),
            borderSide: BorderSide(
              color: const Color(0xff677294).withOpacity(0.16),
            ),
          ),
          contentPadding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 20.w),
          hintText: hintText,
          hintStyle: TextStyle(
              // fontFamily: "Montserrat",
              color: Colors.black.withOpacity(0.3),
              fontWeight: FontWeight.w300,
              fontSize: 16.sp),
        ),
      ),
    );
  }
}

class CustomTextFieldWithoutIcon extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;
  const CustomTextFieldWithoutIcon({
    Key? key,
    required this.hintText,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: EdgeInsets.only(left: 20.w, right: 20.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
            ),
            disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(12),
                borderSide: BorderSide(
                  color: const Color(0xff677294).withOpacity(0.16),
                )),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: const Color(0xff677294).withOpacity(0.16),
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(
                color: const Color(0xff677294).withOpacity(0.16),
              ),
            ),
            contentPadding:
                EdgeInsets.symmetric(vertical: 4.h, horizontal: 20.w),
            hintText: hintText,
            hintStyle: TextStyle(
                fontFamily: "Montserrat",
                color: const Color(0xff677294),
                fontWeight: FontWeight.w300,
                fontSize: 16.sp)),
      ),
    );
  }
}
