import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/features/cart_view/units/cart_item.dart';
import 'package:mega_store_task/features/cart_view/units/check_out_button.dart';
import 'package:mega_store_task/features/cart_view/units/cubon.dart';
import 'package:mega_store_task/features/cart_view/units/total_container.dart';

import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';

class CartViewForm extends StatelessWidget {
  const CartViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
      CustomScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  height: 20.h,
                ),
                CustomText(
                  text: 'Your Cart',
                  textStyle: Theme.of(context).textTheme.headline1,
                ),
                Expanded(
                    child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 28.h,
                      ),
                      SizedBox(
                        height: 2.h,
                        width: 1.sw,
                        child: Divider(
                          color: Colors.grey.shade300,
                          thickness: 1.h,
                        ),
                      ),
                      SizedBox(
                        height: 16.h,
                      ),
                     const CartItem(),
                      SizedBox(
                        height: 16.h,
                      ),
                      const CartItem(),
                      SizedBox(
                        height: 16.h,
                      ),
                      const CubonRow(),
                      SizedBox(height: 16.h,),
                      const TotalCartConatiner(),
                      SizedBox(height: 80.h,)


                    ],
                  ),
                ))
              ],
            ),
            const CheckOutButton(),
          ],
        ),
      ),
    );
  }
}




