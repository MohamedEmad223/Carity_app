import 'package:flutter/material.dart';

import '../../../../../core/helpers/app_images.dart';

class ImagesWidgets extends StatelessWidget {
  const ImagesWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          AppImages.loginBackgroundimage,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          top: 80,
          left: 40,
          child: Image.asset(
            AppImages.blankImage,
          ),
        ),
        Positioned(
          top: 90,
          left: 10,
          right: 10,
          child: Container(
            height: 200,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
            ),
          ),
        )
      ],
    );
  }
}
