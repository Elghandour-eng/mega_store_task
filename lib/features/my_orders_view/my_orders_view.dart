import 'package:flutter/material.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/features/favourites_view/favourites_view_form.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyOrdersViewForm extends StatelessWidget {
  const MyOrdersViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Column(
          children: [
            const TopTitle(
              title: 'My Orders',
            ),
            SizedBox(
              height: 24.h,
            ),
            Expanded(
                child: ListView.builder(
                    itemCount: 2,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          Container(
                            height: 220.h,
                            width: 1.sw,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(5.r),
                              border:
                                  Border.all(color: Colors.grey, width: 1.w),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(height: 16.h,),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: "LQNSU346JK",
                                        fontSize: 15.sp,
                                        fontWeight: FontWeight.w700,
                                        color: ColorManager.textColor2,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 3.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      CustomText(
                                        text: 'Order at E-comm : August 1, 2017',
                                        color: Colors.grey.shade400,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: 'Order Status',
                                        color: Colors.grey.shade400,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      CustomText(
                                        text: 'Shipping',
                                        color: ColorManager.textColor2,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: 'Items',
                                        color: Colors.grey.shade400,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      CustomText(
                                        text: '2 items purchased',
                                        color: ColorManager.textColor2,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16.h,
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      CustomText(
                                        text: 'Price',
                                        color: Colors.grey.shade400,
                                        fontSize: 11.sp,
                                        fontWeight: FontWeight.w300,
                                      ),
                                      CustomText(
                                        text: '\$ 299',
                                        color: Colors.black,
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 16.h,)

                        ],
                      );
                    }))
          ],
        ),
      ),
    );
  }
}
