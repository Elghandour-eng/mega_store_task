import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';

import '../core/image_manager/app_images.dart';

class TopAuthView extends StatelessWidget {
  final String? text1;
  final String? text2;
  final double? space;
  const TopAuthView({Key? key, this.text2, this.text1, this.space})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 42.h,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 35),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 80.h,
                width: 318.w,
                child: Image.asset(
                  AppImages.logo,
                  fit: BoxFit.contain,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: space ?? 28.h,
        ),
        CustomText(
          text: text1 ?? '',
          textStyle: Theme.of(context).textTheme.headline1,
        ),
        SizedBox(
          height: 8.h,
        ),
        CustomText(
          text: text2 ?? '',
          textStyle: Theme.of(context).textTheme.headline4,
        ),
      ],
    );
  }
}
