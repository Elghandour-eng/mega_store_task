import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_field.dart';

class PasswordForm extends StatelessWidget {
  const PasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Form(
          child: Column(
            children: [
              CustomTextField(
                title: 'Current Password',
                hintText: '*********',
                hPadding: 18.w,
                borderRadius: 0,
                filledColor: Colors.transparent,
                textFieldHeight: 48.h,
              ),
            ],
          ),
        ),
        SizedBox(
          height: 12.h,
        ),
        CustomTextField(
          title: 'New Password',
          hintText: '*********',
          hPadding: 18.w,
          borderRadius: 0,
          filledColor: Colors.transparent,
          textFieldHeight: 48.h,
        ),
        SizedBox(
          height: 12.h,
        ),
        CustomTextField(
          title: 'Confirm Password',
          hintText: '***********',
          hPadding: 18.w,

          borderRadius: 0,
          filledColor: Colors.transparent,
          textFieldHeight: 48.h,
        ),

        SizedBox(
          height: 24.h,
        ),
        CustomButton(
          function: () {},
          text: 'Save',
          hPadding: 18.w,
          colorBtn: ColorManager.secondButtonColor,
        )
      ],
    );
  }
}
