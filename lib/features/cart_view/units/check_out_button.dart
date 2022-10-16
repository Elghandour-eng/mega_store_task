import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/address_details/address_details.dart';

import '../../../core/color_manager/color_manager.dart';
import '../../../widgets/custom_button.dart';



class CheckOutButton extends StatelessWidget {
  const CheckOutButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 80.h,
        width: 1.sw,
        color: ColorManager.scaffoldBackGroundColor,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Center(
            child: CustomButton(
              colorBtn: ColorManager.secondButtonColor,
              text: 'Check Out',
              borderRadius: 3.r,
              function: () {
                MagicRouter.navigateTo(const AddressDetailsViewForm(shiping: true,));
              },
              textSize: 14.sp,
              hPadding: 16.w,
            ),
          ),
        ),
      ),
    );
  }
}