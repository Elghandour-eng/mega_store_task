import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';

import '../../core/color_manager/color_manager.dart';
import '../../core/image_manager/app_images.dart';
import '../../widgets/pop_scaffold.dart';
import 'bloc/cubit.dart';
import 'bloc/states.dart';

part 'units/bottom_nav_bar.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      navBar: const _BottomBar(),
      body: BlocConsumer<HomeCubit, HomeStates>(
        listener: (_, s) {},
        builder: (context, s) {
          return HomeCubit.get(context)
              .bottomScreens[HomeCubit.get(context).currentIndex];
        },
      ),
    );
  }
}