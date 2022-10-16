import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/product_details_view/product_details_view.dart';

import '../core/image_manager/app_images.dart';
import 'custom_text_widget.dart';

class ProductContainer extends StatelessWidget {
  final int? index;
  final IconData? topIcon;
  const ProductContainer({Key? key, this.index, this.topIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 10.w),
      child: GestureDetector(
        onTap: () => MagicRouter.navigateTo(const ProductViewForm()),
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 166.h,
                  width: 152.w,
                  color: Colors.grey,
                  child: Image.asset(
                    index! % 2 == 0 ? AppImages.product2 : AppImages.product1,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: 7.h,
                  left: 7.w,
                  child:  Icon(
                    topIcon ?? Icons.favorite_border,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  width: 152.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text: ' FS-Nike Air Max 270',
                        textStyle: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: 152.w,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomText(
                        text: '  React',
                        textStyle: Theme.of(context).textTheme.headline2,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 4,
            ),
            SizedBox(
              width: 152.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: '  \$135',
                    textStyle: Theme.of(context).textTheme.headline6,
                  ),
                ],
              ),
            ),
            SizedBox(
              width: 152.w,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomText(
                    text: '  \$140',
                    underline: TextDecoration.lineThrough,
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: Colors.grey.shade500,
                  ),
                  SizedBox(
                    width: 20.w,
                  ),
                  CustomText(
                    text: '24% off',
                    fontSize: 12.sp,
                    fontWeight: FontWeight.w400,
                    color: const Color(0xffFB7181),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
