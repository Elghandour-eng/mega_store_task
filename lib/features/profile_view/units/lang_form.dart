import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../widgets/custom_button.dart';
import '../../../widgets/custom_text_field.dart';

class LanguageForm extends StatelessWidget {
  const LanguageForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 30,),
        Column(
          children: [
            CustomTextField(
              title: 'Change Language',
              hintText: 'English',
              hPadding: 18.w,
              suffixIcon:const Icon(Icons.arrow_drop_down),
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