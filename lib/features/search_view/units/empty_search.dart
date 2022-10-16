import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/image_manager/app_images.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';

import '../search_view_form.dart';

class EmptySearchView extends StatefulWidget {
  const EmptySearchView({Key? key}) : super(key: key);

  @override
  State<EmptySearchView> createState() => _EmptySearchViewState();
}

class _EmptySearchViewState extends State<EmptySearchView> {
  @override

  initState(){
    super.initState();
    Timer(const Duration(seconds: 3),(){
      MagicRouter.navigateTo(const SearchViewForm());
    });
  }
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backColor:Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 99.h,
          ),
          SizedBox(
              height: 218.h,
              width: 197.w,
              child: Image.asset(
                AppImages.noSearch,
                fit: BoxFit.fill,
              )),
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            text: 'No Results Found',
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff223263),
          ),
          SizedBox(
            height: 56.h,
          ),
          CustomButton(
            function: () {},
            text: 'Back To Home',
            colorBtn: const Color(0xffBA6400),
          )
        ],
      ),
    );
  }
}
