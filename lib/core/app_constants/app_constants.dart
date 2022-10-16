import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../color_manager/color_manager.dart';

const String baseUrl = 'https://mawasims.com.sa/api/';
TextTheme textTheme = TextTheme(
  headline1: TextStyle(
      fontSize: 18.sp,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      color: ColorManager.textColor2,
      fontFamily: 'Poppins'),
  headline4: TextStyle(
      fontSize: 15.sp,
      //fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      color: Colors.grey,
      fontFamily: 'Poppins'),
  headline5: TextStyle(
      fontSize: 15.sp,
      //fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w800,
      color: Colors.grey,
      fontFamily: 'Poppins'),
  headline3: TextStyle(
      fontSize: 16.sp,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w600,
      color: ColorManager.textColor2,
      fontFamily: 'Poppins'),
  headline2: TextStyle(
    fontSize: 12.0.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w700,
    color: const Color(0xff223263),
  ),
  headline6: TextStyle(
    fontSize: 13.0.sp,
    fontFamily: 'Poppins',
    fontWeight: FontWeight.w800,
    color: const Color(0xff50555C),
  ),
);
