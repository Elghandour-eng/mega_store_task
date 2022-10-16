import 'package:flutter/material.dart';
import 'package:mega_store_task/features/sign_in_view/sign_in_form.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';

import '../../core/color_manager/color_manager.dart';
import '../../core/router/router.dart';
import '../../widgets/custom_text_field.dart';
import '../../widgets/custom_text_widget.dart';
import '../../widgets/top_auth_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../home_navigator/view.dart';
import '../home_view/home_view_form.dart';

part 'units/input_form.dart';
part 'units/sign_up_button.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
             TopAuthView(
              text2: 'Create an new account',
              text1: '  Let\'s Get Started',
              space: 71.h,
            ),
            const _InputForm(),
            const _SignUpButton()


          ],
        ),
      ),
    );
  }
}
