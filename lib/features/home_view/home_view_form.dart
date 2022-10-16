import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/image_manager/app_images.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/cart_view/cart_view.dart';
import 'package:mega_store_task/widgets/custom_text_field.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../widgets/custom_text_widget.dart';
import '../../widgets/product_container.dart';
import '../category_view/category_view_form.dart';
import '../search_view/units/empty_search.dart';

part 'units/falsh_sale.dart';
part 'units/category.dart';
part 'units/search_cart.dart';
part 'units/tob_slider.dart';
part 'units/second_slider.dart';
part 'units/flash_sale_list.dart';
part 'units/you_may_like.dart';


class HomeViewForm extends StatelessWidget {
  const HomeViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Column(
        children: [
          const _SearchAndCart(),
          Expanded(
            child: ListView(
              physics: const BouncingScrollPhysics(),
              children: [
                const _TopSlider(),
                SizedBox(
                  height: 10.h,
                ),
                const _CategoryList(),
                SizedBox(
                  height: 15.h,
                ),
                const _SecondSlider(),
                const _FlashSale(),
                SizedBox(
                  height: 16.h,
                ),
                const _FlashSAleList(),
                SizedBox(
                  height: 29.h,
                ),
                const _YouMayLike()
              ],
            ),
          ),
        ],
      ),
    );
  }
}
