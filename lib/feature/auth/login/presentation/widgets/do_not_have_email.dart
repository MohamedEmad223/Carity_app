import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class CustomDonothaveemail extends StatelessWidget {
  const CustomDonothaveemail(
      {super.key,
      required this.textOne,
      required this.textTwo,
      required this.textStyleone,
      required this.textStyleTwo, this.onPressed});
  final String textOne;
  final String textTwo;

  final TextStyle textStyleone;
  final TextStyle textStyleTwo;

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textOne,
          style: textStyleone,
        ),
        SizedBox(width: 5.w),
        GestureDetector(
          onTap: onPressed,
          child: Text(
            textTwo,
            style: textStyleTwo,
          ),
        )
      ],
    );
  }
}
