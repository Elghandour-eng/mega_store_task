

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/custom_text_field.dart';





class CubonRow extends StatelessWidget {
  const CubonRow({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomTextField(
          hintText: 'Apply Cupon',
          borderRadius: 2.r,
          textFieldWidth: .6.sw,
          hPadding: 0,
          textFieldHeight: 49.h,
        ),
        CustomButton(function: (){}, text: "Apply",
          colorBtn: ColorManager.secondButtonColor,
          height: 48.h,
          width: .3.sw,
          hPadding: 0,
          borderRadius: 2,
          textSize: 14.sp,
        )
      ],
    );
  }
}