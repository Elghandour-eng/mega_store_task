import 'package:flutter/material.dart';
import 'package:mega_store_task/features/favourites_view/favourites_view_form.dart';
import 'package:mega_store_task/features/profile_view/units/form_change_password.dart';
import 'package:mega_store_task/features/profile_view/units/form_email.dart';
import 'package:mega_store_task/features/profile_view/units/form_phone_number.dart';
import 'package:mega_store_task/features/profile_view/units/lang_form.dart';
import 'package:mega_store_task/features/profile_view/units/name_form.dart';
import 'package:mega_store_task/widgets/custom_button.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/color_manager/color_manager.dart';
import '../../core/router/router.dart';
import '../../widgets/custom_text_field.dart';

part 'units/profile_row.dart';
part 'units/person_data.dart';
part 'units/profile_list.dart';

class ProfileViewForm extends StatelessWidget {
  const ProfileViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    GlobalKey<ScaffoldState>key=GlobalKey<ScaffoldState>();
    return CustomScaffold(
      key: key,
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.w),
            child: const TopTitle(
              title: 'Profile',
            ),
          ),
          SizedBox(
            height: 28.h,
          ),
          SizedBox(
            height: 3.h,
            width: 1.sw,
            child: Divider(
              thickness: 1.w,
              color: Colors.grey.shade400,
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
          const _PersonData(),
          SizedBox(
            height: 56.h,
          ),
          profileList(context: context,)

        ],
      ),
    );
  }
}
