import 'package:flutter/material.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/custom_text_field.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';

import '../favourites_view/favourites_view_form.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


class ChangeAddressView extends StatelessWidget {
  const ChangeAddressView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body:
      Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16.w),
        child: Stack(
          children: [

            Column(
            children: [
             const     TopTitle( title:"Add Address" ,),
             SizedBox(height: 44.h,),
            Form(child: Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    CustomTextField(
                      title: 'Country or region',
                     borderRadius: 4.r,
                    ),
                    SizedBox(height: 16.h,),
                    CustomTextField(
                      title: 'Street Address',
                      borderRadius: 4.r,
                    ),
                    SizedBox(height: 16.h,),
                    CustomTextField(
                      title: 'Street Address 2 (Optional)',
                      borderRadius: 4.r,
                    ),
                    SizedBox(height: 16.h,),
                    CustomTextField(
                      title: 'State/Province/Region',
                      borderRadius: 4.r,
                    ),
                    SizedBox(height: 32.h,),
                    CustomTextField(
                      title: 'Zip Code',
                      borderRadius: 4.r,
                    ),
                    SizedBox(height: 32.h,),
                    CustomTextField(
                      title: 'Phone Number',
                      borderRadius: 4.r,
                    ),
                    SizedBox(height: 140.h,),



                  ],
                ),
              ),
            ))

            ],
            ),
            Align(alignment: Alignment.bottomCenter,
              child:
              Container(
                height: 80.h,
                width: 1.sw,
                color: ColorManager.scaffoldBackGroundColor,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 16),
                  child: Center(
                    child: CustomButton(
                      colorBtn: ColorManager.secondButtonColor,
                      text: 'Add Address',
                      borderRadius: 3.r,
                      function: (){},
                      textSize: 14.sp,
                      hPadding: 16.w,
                    ),
                  ),
                ),
              ),),
          ],
        ),
      ),
    );
  }
}
