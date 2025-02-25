import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../login/presentation/widgets/images_widgets.dart';

class VerficationScreen extends StatelessWidget {
  const VerficationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ImagesWidgets(),
          SizedBox(height: 10.h),
          Column(
            children: [],
          )
        ],
      ),
    );
  }
}
