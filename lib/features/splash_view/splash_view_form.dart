import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/features/sign_in_view/sign_in_form.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';

import '../../core/color_manager/color_manager.dart';
import '../../core/image_manager/app_images.dart';

part 'units/animated_splash_view.dart';

class SplashViewForm extends StatelessWidget {
  const SplashViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  CustomScaffold(
      body: SizedBox(
          height: 1.sh,
          width: 1.sw,
          child:const _AnimatedSplash()),
    );
  }
}
