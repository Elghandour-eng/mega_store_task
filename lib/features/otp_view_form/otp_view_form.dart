import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/otp_view_form/units/otp_field.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:mega_store_task/widgets/top_auth_view.dart';

import '../confirm_password_view/confirm_password_form.dart';

class OtpViewForm extends StatelessWidget {
  const OtpViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            TopAuthView(
              text1: "Verify Your Account",
              text2: "check your Email",
              space: 38.h,
            ),
            SizedBox(height: 70.h,),
            /// OTP TEXT FIELD NOT
            /// FOUND IN FIGMA FILE
            /// OTP I  PUT IS NOT
            /// IN FIGMA
            const CodeField(),
            SizedBox(height: 78.h,),
            CustomButton(function: (){
              MagicRouter.navigateTo(const ConfirmPasswordForm());
            },
                text: "Verify")


          ],
        ),
      ),
    );
  }
}
