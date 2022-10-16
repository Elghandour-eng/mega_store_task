import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/otp_view_form/otp_view_form.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/custom_text_field.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:mega_store_task/widgets/top_auth_view.dart';

class ForgetPassForm extends StatelessWidget {
  const ForgetPassForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const TopAuthView(
              text1: 'Forget Password',
              text2: 'Add your email to send code',
            ),
            SizedBox(
              height: 69.h,
            ),
            CustomTextField(
              hintText: "example@gmail.com",
              prefixIcon: const Icon(
                Icons.mail_outline,
              ),
              borderRadius: 2,
              hPadding: 16.w,
              borderWidth: .5,
            ),
            SizedBox(
              height: 31.h,
            ),
            CustomButton(
                function: () {
                  MagicRouter.navigateTo(const OtpViewForm());
                },
                text: "SEND ")
          ],
        ),
      ),
    );
  }
}
