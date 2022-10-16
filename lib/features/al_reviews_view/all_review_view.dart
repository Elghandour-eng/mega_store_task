import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/features/favourites_view/favourites_view_form.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';

import '../../core/color_manager/color_manager.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_widget.dart';
import '../add_review/add_review.dart';
part 'units/buuton_add.dart';
part 'units/review_box.dart';

class AllREviewsViewForm extends StatelessWidget {
  const AllREviewsViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),                child: const TopTitle(
                  title: "All Reviews",
                ),
              ),
              SizedBox(
                height: 22.h,
              ),
              Expanded(
                  child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: ListView.builder(
                  itemCount: 4,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        const _ReviewBox(),
                        SizedBox(height: index != 3 ? 25.h : 110.h),
                      ],
                    );
                  },
                ),
              ))
            ],
          ),
          const AddReview(),
        ],
      ),
    );
  }
}
