import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:mega_store_task/widgets/product_container.dart';

class CategoryViewForm extends StatelessWidget {
  const CategoryViewForm({Key? key}) : super(key: key);

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
                  text: 'Category Name',
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
              itemCount: 16,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: .65),
              itemBuilder: (context, index) {
                return ProductContainer(
                  index: index,
                );
              },
            ))
          ],
        ),
      ),
    );
  }
}
