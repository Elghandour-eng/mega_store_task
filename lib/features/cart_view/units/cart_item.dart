
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/core/image_manager/app_images.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130.h,
      width: 1.sw,
      child: Container(
        decoration: BoxDecoration(
          border:
          Border.all(color: Colors.grey.shade400, width: 1.w),
          borderRadius: BorderRadius.circular(5.r),
        ),
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15.w),
              child: Image.asset(
                AppImages.product1,
                height: 80.h,
                width: 75.w,
              ),
            ),
            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment:
                  MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 50.h,
                      width: 140.w,
                      child: CustomText(
                        text: 'Nike Air Zoom Pegasus 36 Miami',
                        color: ColorManager.textColor2,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    const Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    SizedBox(
                      width: 20.w,
                    ),
                    const Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                SizedBox(
                  height: 50.h,
                  width: .55.sw,
                  child: Row(
                    children: [
                      SizedBox(
                        height: 50.h,
                        width: 80.w,
                        child: CustomText(
                          text: '\$ 299',
                          color: const Color(0xff40BFFF),
                          fontSize: 18.sp,
                          align: TextAlign.start,
                        ),
                      ),
                      SizedBox(
                        width: 5.w,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 34.w,
                            height: 28.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade400,
                                  width: .5.w),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(5.r),
                                  bottomLeft:
                                  Radius.circular(5.r)),
                            ),
                            child: Center(
                              child: Icon(Icons.remove),
                            ),
                          ),
                          Container(
                            height: 28.h,
                            width: 50.w,
                            color: Color(0xffEBF0FF),
                            child: CustomText(text: '1',
                              color: Color(0xff223263),),
                          ),
                          Container(
                            width: 34.w,
                            height: 28.h,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: Colors.grey.shade400,
                                  width: .5.w),
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(5.r),
                                  bottomRight:
                                  Radius.circular(5.r)),
                            ),
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}