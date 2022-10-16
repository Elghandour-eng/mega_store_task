import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:mega_store_task/widgets/top_auth_view.dart';

import '../../core/router/router.dart';
import '../../widgets/custom_text_field.dart';
import '../home_view/home_view_form.dart';
part 'units/auth_button.dart';
part 'units/input_form.dart';

class ConfirmPasswordForm extends StatelessWidget {
  const ConfirmPasswordForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            TopAuthView(
              text1: 'Reset Password',
              text2: '',
              space: 29.h,
            ),
            const _InputForm(),
            const _AuthButton()
          ],
        ),
      ),
    );
  }
}
