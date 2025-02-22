import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_colors.dart';

class AppTextStyle {
  static TextStyle poppins25W500primaryColor = GoogleFonts.poppins(
    color: AppColors.primaryColor,
    fontSize: 25,
    fontWeight: FontWeight.w500,
  );

  static TextStyle poppins25W500secondaryColor = GoogleFonts.poppins(
    color: AppColors.secondaryColor,
    fontSize: 25,
    fontWeight: FontWeight.w500,
  );

  static TextStyle poppins14W400blackColor = GoogleFonts.poppins(
    color: Colors.black,
    fontSize: 14,
    fontWeight: FontWeight.w400,
  );
}
