import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/cart_view/units/success_view.dart';
import 'package:mega_store_task/features/chandge_address/change_address_view.dart';
import 'package:mega_store_task/features/product_details_view/product_details_view.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';

import '../../core/color_manager/color_manager.dart';
import '../../widgets/custom_text_widget.dart';
import '../favourites_view/favourites_view_form.dart';

class AddressDetailsViewForm extends StatelessWidget {
  final bool? shiping;
  const AddressDetailsViewForm({Key? key, this.shiping}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.h),
        child: Stack(
          children: [
            Column(
              children: [
                TopTitle(
                  title: shiping ?? false ? "Ship to" : 'Address',
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
                                height: 260.h,
                                width: 1.sw,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5.r),
                                  border: Border.all(
                                      color: Colors.grey, width: 1.w),
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(16.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: "Priscekila",
                                            fontSize: 15.sp,
                                            fontWeight: FontWeight.w700,
                                            color: ColorManager.textColor2,
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text:
                                                '3711 Spring Hill Rd undefined Tallahassee,\n Nevada 52874 United States',
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomText(
                                            text: '+99 1234567890',
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
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 8.0),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomButton(
                                            text: 'Edit',
                                            function: () {
                                              MagicRouter.navigateTo(
                                                  const ChangeAddressView());
                                            },
                                            width: 77.w,
                                            height: 57.h,
                                            haveShadow: true,
                                            textSize: 13.sp,
                                            colorBtn: const Color(0xff50555C),
                                          ),
                                          SizedBox(
                                            width: 30.w,
                                          ),
                                          Icon(
                                            Icons.delete_outline_outlined,
                                            color: Colors.grey.shade500,
                                          )
                                        ],
                                      ),
                                    ),
                                    SizedBox(
                                      height: 16.h,
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 16.h,
                              )
                            ],
                          );
                        }))
              ],
            ),
            shiping ?? false
                ? const AddToCartButton(
                    title: "Next",
              route: SuccessCart(),

                  )
                : const SizedBox()
          ],
        ),
      ),
    );
  }
}
