import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/features/home_view/home_view_form.dart';

import '../../core/router/router.dart';
import '../../widgets/custom_text_widget.dart';
import '../../widgets/pop_scaffold.dart';

class CategoriesViewForm extends StatelessWidget {
  const CategoriesViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            SizedBox(
              height: 15.h,
            ),
            Row(
              children: [
                GestureDetector(
                    onTap: () => MagicRouter.pop(),
                    child: const Icon(Icons.arrow_back_ios_new)),
                SizedBox(
                  width: 4.w,
                ),
                CustomText(
                  text: 'All Categories',
                  textStyle: Theme.of(context).textTheme.headline3,
                )
              ],
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 15,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, childAspectRatio: .8),
                  itemBuilder: (context, index) {
                    return CategoryWidget(index: index,);
                  },
                ))
          ],
        ),
      ),
    );
  }
}
