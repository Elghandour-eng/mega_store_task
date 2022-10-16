import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/home_navigator/view.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';


class SuccessCart extends StatefulWidget {
  const SuccessCart({Key? key}) : super(key: key);

  @override
  State<SuccessCart> createState() => _SuccessCartState();
}

class _SuccessCartState extends State<SuccessCart> {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      backColor:Colors.white,
      body: Column(
        children: [
          SizedBox(
            height: 99.h,
          ),
          CircleAvatar(
            radius: 80.r,
            backgroundColor: Colors.green,
            child:const Icon(Icons.check,color: Colors.white,
            size: 80,),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            text: 'Success',
            fontSize: 22.sp,
            fontWeight: FontWeight.w600,
            color: const Color(0xff223263),
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomText(
            text: 'thank you for shopping From \n  MEGA Store',
            fontSize: 18.sp,
            fontWeight: FontWeight.w400,
            color: const Color(0xff223263),
          ),
          SizedBox(
            height: 56.h,
          ),
          CustomButton(
            function: () {
              MagicRouter.navigateTo(const HomeNavigator());
            },
            text: 'Back To Home',
            colorBtn: const Color(0xff50555C),
          )
        ],
      ),
    );
  }
}
