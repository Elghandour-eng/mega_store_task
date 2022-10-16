import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_field.dart';

class PhoneNumberForm extends StatelessWidget {
  const PhoneNumberForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        Column(
          children: [
            CustomTextField(
              title: 'Change Phone',
              hintText: '(373)-852 2445 455',
              hPadding: 18.w,
              borderRadius: 0,
              filledColor: Colors.transparent,
              textFieldHeight: 48.h,

            ),
          ],
        ),
        SizedBox(height:   24.h,),
        CustomButton(function: (){}, text: 'Save',hPadding: 18.w,colorBtn: ColorManager.secondButtonColor,
        borderRadius: 3.r,)
      ],
    );
  }
}
