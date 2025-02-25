import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextStyle poppins25W500primaryColor = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: 25.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle poppins12w400primaryColor = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: 12.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle poppins25W500secondaryColor = GoogleFonts.poppins(
    color: AppColors.secondaryColor,
    fontSize: 25.sp,
    fontWeight: FontWeight.w500,
  );

  static TextStyle poppins14W400blackColor = GoogleFonts.poppins(
    color: Colors.black,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle poppins20W400blackColor = GoogleFonts.poppins(
    color: Colors.black,
    fontSize: 20.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle poppins14W400greyColor = GoogleFonts.poppins(
    color: AppColors.greyColor,
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle poppins22W400blackColor = GoogleFonts.poppins(
    color: Colors.black,
    fontSize: 22.sp,
    fontWeight: FontWeight.w400,
  );

  static TextStyle poppins16W400whiteColor = GoogleFonts.poppins(
    color: Colors.white,
    fontSize: 16.sp,
    fontWeight: FontWeight.w400,
  );
}
