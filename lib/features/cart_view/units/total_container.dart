import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';


class TotalCartConatiner extends StatelessWidget {
  const TotalCartConatiner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200.h,
      width: 1.sw,
      decoration: BoxDecoration(
        border:
        Border.all(color: Colors.grey.shade400, width: 1.w),
        borderRadius: BorderRadius.circular(5.r),
      ),
      child: Padding(
        padding:  EdgeInsets.all(16.w),
        child: Column(
          children: [
            SizedBox(height: 8.h,),
            SizedBox(
              width: .8.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Items (3)",
                    color:const Color(0xff9098B1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,),
                  CustomText(text: '\$598.86'
                    ,color:const Color(0xff223263),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h,),

            SizedBox(
              width: .8.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Shipping",
                    color:const Color(0xff9098B1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,),
                  CustomText(text: '\$40.00'
                    ,color:const Color(0xff223263),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              width: .8.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Import charges",
                    color:const Color(0xff9098B1),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,),
                  CustomText(text: '\$128.00'
                    ,color:const Color(0xff223263),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  )
                ],
              ),
            ),
            SizedBox(height: 20.h,),
            SizedBox(
              width: .8.sw,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomText(text: "Total Price",
                    color:const Color(0xff223263),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,),
                  CustomText(text: '\$766.86'
                    ,color:const Color(0xff40BFFF),
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                  )
                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}
