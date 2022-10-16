import 'package:flutter/material.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/core/image_manager/app_images.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/pop_scaffold.dart';

class DeleteAccountView extends StatelessWidget {
  const DeleteAccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          SizedBox(
            height: 234.h,
          ),
          Image.asset(
            AppImages.delete,
            height: 180.h,
            width: 180.w,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 16.h,
          ),
          const CustomText(
            text: 'Confirmation',
            color: ColorManager.textColor2,
          ),
          SizedBox(
            height: 8.h,
          ),
          CustomText(text:
          "Are you sure delete acconut",
          color: Colors.grey.shade400,
          fontSize: 14.sp,fontWeight: FontWeight.w500,
          ),
          SizedBox(
            height: 16.h,
          ),
          CustomButton(
            text: 'Delete',
            function: (){},
            hPadding: 16.w,
            colorBtn: Colors.red,),
          SizedBox(
            height: 8.h,
          ),
          CustomText(text:
          "Cancel",
            color: Colors.grey.shade400,
            fontSize: 14.sp,fontWeight: FontWeight.w500,
          ),

        ],
      ),
    );
  }
}
