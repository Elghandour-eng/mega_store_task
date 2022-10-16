import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';

import '../core/global_cubit/obsecure_cubit/cubit.dart';
import '../core/global_cubit/obsecure_cubit/states.dart';

class CustomTextField extends StatelessWidget {
  final String? title;
  final String? hintText;
  final void Function(String? v)? onSaved;
  final String? Function(String? v)? validate;
  final Widget? prefixIcon;
  final bool? obscure;
  final Widget? suffixIcon;
  final double? borderRadius;
  final Color? filledColor;
  final double? hPadding;
  final bool? isPassword;
  final TextInputType? textInputType;
  final TextDirection? textDirection;
  final Color? borderColor;
  final double? borderWidth;
  final double? textFieldHeight;
  final double? textFieldWidth;
  final TextEditingController? controller;
  final bool? readOnly;
  final Function()? onTab;
  final int? lines;

  const CustomTextField(
      {Key? key,
        this.lines,
      this.textFieldWidth,
      this.borderColor,
      this.borderWidth,
      this.textInputType,
      this.isPassword,
      this.textDirection,
      this.suffixIcon,
      this.filledColor,
      this.borderRadius,
      this.hPadding,
      this.hintText,
      this.title,
      this.onSaved,
      this.validate,
      this.obscure = false,
      this.controller,
      this.textFieldHeight,
      this.prefixIcon,
      this.readOnly,
      this.onTab})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ObSecureBloc>(
      create: (context) => ObSecureBloc(),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: hPadding ?? 8.0),
            child: InkWell(
              onTap: () {
                onTab;
              },
              child: Column(
                children: [
                  title == null
                      ? const SizedBox()
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(
                              text: title,
                              color: ColorManager.textColor2,
                            )
                          ],
                        ),
                  SizedBox(
                    height: title == null ? 0 : 16.h,
                  ),
                  SizedBox(
                    width: textFieldWidth ?? 1.sw,
                    height:
                        lines==null? textFieldHeight ?? 48.h :lines!*20.h,
                    child: BlocConsumer<ObSecureBloc, ObSecure>(
                        listener: (context, state) {},
                        builder: (context, state) {
                          return TextFormField(
                            maxLines: lines??1,
                            readOnly: readOnly ?? false,
                            obscureText: isPassword ?? false
                                ? ObSecureBloc.get(context).secure
                                : obscure ?? false,
                            controller: controller,
                            keyboardType: textInputType,
                            onSaved: onSaved,
                            validator: validate,
                            autofocus: false,
                            autovalidateMode:
                                AutovalidateMode.onUserInteraction,
                            decoration: InputDecoration(
                              hintText: hintText ?? "",
                              hintStyle: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal),
                              labelStyle: const TextStyle(
                                  fontFamily: 'Poppins',
                                  fontSize: 14,
                                  fontWeight: FontWeight.normal),
                              prefixIcon: prefixIcon,
                              suffixIcon: isPassword ?? false
                                  ? ObSecureBloc.get(context).secure
                                      ? InkWell(
                                          onTap: () => ObSecureBloc.get(context)
                                              .changeSecure(),
                                          child: const Icon(
                                              Icons.visibility_off_outlined))
                                      : InkWell(
                                          onTap: () => ObSecureBloc.get(context)
                                              .changeSecure(),
                                          child: const Icon(
                                              Icons.visibility_outlined))
                                  : suffixIcon,
                              errorStyle: const TextStyle(
                                  fontSize: 12,
                                  height: .5,
                                  fontFamily: 'Poppins'),
                              filled: true,
                              contentPadding: const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20),
                              fillColor: filledColor ??
                                  ColorManager.scaffoldBackGroundColor,
                              focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(
                                      borderRadius ?? 3.r),
                                  borderSide:
                                      const BorderSide(color: Colors.grey)),
                              border: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius ?? 15.r),
                                borderSide: BorderSide(
                                    color: Colors.lightBlue,
                                    width: borderWidth ?? 0),
                              ),
                              focusedErrorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius ?? 15.r),
                                borderSide: BorderSide(
                                    color: Colors.lightBlue,
                                    width: borderWidth ?? 0),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius ?? 15.r),
                                borderSide: BorderSide(
                                    color: borderColor ?? Colors.grey.shade500,
                                    width: borderWidth ?? 0),
                              ),
                              errorBorder: OutlineInputBorder(
                                borderRadius:
                                    BorderRadius.circular(borderRadius ?? 15.r),
                                borderSide: BorderSide(
                                    color: Colors.red, width: borderWidth ?? 0),
                              ),
                            ),
                          );
                        }),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
