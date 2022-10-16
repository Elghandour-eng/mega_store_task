import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../core/color_manager/color_manager.dart';

class CodeField extends StatelessWidget {
  final String? email;
  final String? type;
  const CodeField({Key? key, this.email, this.type}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PinCodeTextField(
          length: 4,
          mainAxisAlignment: MainAxisAlignment.center,
          animationType: AnimationType.none,
          //cursorColor: ColorManager.primaryColor,
          keyboardType: TextInputType.number,
          autoFocus: true,
          textStyle: TextStyle(fontWeight: FontWeight.normal, fontSize: 15.sp),
          pinTheme: PinTheme(
            fieldOuterPadding:
                EdgeInsets.symmetric(vertical: 0, horizontal: 10.w),
            shape: PinCodeFieldShape.box,
            borderRadius: BorderRadius.circular(5.r),
            fieldHeight: 60.h,
            fieldWidth: 60.w,
            activeFillColor: ColorManager.scaffoldBackGroundColor,
            selectedFillColor: ColorManager.scaffoldBackGroundColor,
            inactiveFillColor: ColorManager.scaffoldBackGroundColor,
            errorBorderColor: Colors.grey,
            selectedColor: ColorManager.textColor1,
            disabledColor: Colors.grey,
            inactiveColor: Colors.grey
          ),
          animationDuration: const Duration(milliseconds: 500),
          backgroundColor: ColorManager.scaffoldBackGroundColor,
          enableActiveFill: true,
          onChanged: (value) {},
          appContext: context,
        ),
      ],
    );
  }
}
