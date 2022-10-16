import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mega_store_task/core/color_manager/color_manager.dart';
import 'package:mega_store_task/core/image_manager/app_images.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/forget_pass_view/forget_pass_view.dart';
import 'package:mega_store_task/features/sign_up_view/sign_up_form.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/custom_text_field.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:mega_store_task/widgets/top_auth_view.dart';

import '../home_navigator/view.dart';
import '../home_view/home_view_form.dart';

part 'units/input_form.dart';
part 'units/sign_in_button.dart';
part 'units/auth_social_buttons.dart';

class SignInForm extends StatelessWidget {
  const SignInForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            const TopAuthView(
              text2: 'sign in to continue',
              text1: '  Welcome to MEGA Store',
            ),
            const _TextFieldsForm(),
            const _SignInButton(),
            const _AuthSocialButtons(),
            TextButton(
                onPressed: () {
                  MagicRouter.navigateTo(const ForgetPassForm());
                },
                child: const CustomText(
                  text: 'Forget Password?',
                  color: ColorManager.textColor1,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomText(
                  text: 'Don\'t have an account?',
                  textStyle: Theme.of(context).textTheme.headline4,
                ),
                TextButton(
                    onPressed: () {
                      MagicRouter.navigateTo(const SignUpForm());
                    },
                    child: const CustomText(
                      text: 'Register',
                      color: ColorManager.textColor1,
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
