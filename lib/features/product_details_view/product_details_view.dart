import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/al_reviews_view/all_review_view.dart';
import 'package:mega_store_task/features/cart_view/cart_view.dart';
import 'package:mega_store_task/features/favourites_view/favourites_view_form.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/widgets/product_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../core/image_manager/app_images.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_widget.dart';

part 'units/product_images.dart';
part 'units/descrpiton.dart';
part 'units/title.dart';
part 'units/rating_bar.dart';
part 'units/review_details.dart';
part 'units/review_box.dart';
part 'units/common_products.dart';
part 'units/add_cart_button.dart';

class ProductViewForm extends StatelessWidget {
  const ProductViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: const TopTitle(title: 'Product Name...'),
              ),
              Expanded(
                  child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: const _TopSlider(),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: const _ProductTitle(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: const _RatingBar(),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                          width: .6.sw,
                          child: SizedBox(
                            width: 1.sw,
                            child: CustomText(
                              text: '\$299  ',
                              color: const Color(0xff50555C),
                              fontSize: 20.sp,
                              align: TextAlign.start,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: .1.sw,
                          child: CustomText(
                            text: '\$400  ',
                            color: Colors.grey,
                            fontSize: 11.sp,
                            fontWeight: FontWeight.w300,
                            align: TextAlign.start,
                            underline: TextDecoration.lineThrough,
                          ),
                        ),
                         SizedBox(
                           width: .15.sw,
                           child: CustomText(
                             text: '24% off  ',
                             color: Colors.red,
                             fontSize: 11.sp,
                             fontWeight: FontWeight.w300,
                             align: TextAlign.start,
                           ),
                         ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 22.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: const _Descrption(),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: const _ReviewDetails(),
                  ),
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: const _ReviewBox(),
                  ),
                  SizedBox(
                    height: 32.h,
                  ),
                  const _CommonProducts(),
                  SizedBox(
                    height: 50.h,
                  ),
                ],
              ))
            ],
          ),
          const AddToCartButton(),
        ],
      ),
    );
  }
}
