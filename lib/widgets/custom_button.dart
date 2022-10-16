import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import '../core/color_manager/color_manager.dart';
import 'custom_text_widget.dart';

class CustomButton extends StatelessWidget {
  final void Function()? function;
  final String? text;
  final double? width;
  final Color? colorBtn;
  final double? borderRadius;
  final double? height;
  final bool isLoading;
  final double? hPadding;
  final Color? borderColor;
  final Color? textColor;
  final bool? haveICon;
  final Widget? iconWidget;
  final double? textSize;
  final bool? haveShadow;



  const CustomButton(
      {Key? key,
        this.haveICon,
        this.iconWidget,
        this.height,
        this.borderRadius,
        required this.function,
        required this.text,
        this.width,
        this.isLoading = false,
        this.hPadding,
        this.colorBtn,
        this.textColor,
        this.textSize,
      this.borderColor,
      this.haveShadow})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return isLoading
        ? SpinKitFadingCircle(
      itemBuilder: (BuildContext context, int index) {
        return DecoratedBox(
          decoration: BoxDecoration(
            color: index.isEven ? Colors.white : Colors.green,
          ),
        );
      },
    )
        : InkWell(
      onTap: function,
      child: Padding(
        padding:  EdgeInsets.symmetric(horizontal:hPadding??16.w ),
        child: Container(
            width: width,
            height: height ?? 57.h,
            decoration: BoxDecoration(
              color: colorBtn??ColorManager.textColor1,
              border:  Border.all(color:borderColor?? Colors.transparent),
              borderRadius: BorderRadius.circular(borderRadius ?? 4.r),
              boxShadow: [
                haveShadow??false?const BoxShadow(
                  spreadRadius: 10,
                  blurRadius: 4,
                  color: Color(0xffEBF0FF),
                  offset:  Offset(1, 1)
                ):const BoxShadow()
              ]
            ),
            child: Row(
              mainAxisAlignment:MainAxisAlignment.spaceBetween,
              children: [
               iconWidget??const SizedBox(),
                Align(
                  alignment: Alignment.center,
                    child: CustomText(
                      text: text ?? '',
                      color:textColor?? Colors.white,
                      fontSize: textSize?? 16.sp,
                      fontWeight: FontWeight.w700,
                    )),
                  haveICon??false?const SizedBox():const SizedBox()
              ],
            )),
      ),
    );
  }
}
