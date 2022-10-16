import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/core/router/router.dart';
import 'package:mega_store_task/widgets/custom_text_widget.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';
import 'package:mega_store_task/widgets/product_container.dart';

class FavouritesViewForm extends StatelessWidget {
  const FavouritesViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Column(
          children: [
            const TopTitle(),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
                child: GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  itemCount: 3,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, childAspectRatio: .65),
                  itemBuilder: (context, index) {
                    return ProductContainer(
                      index: index,
                      topIcon: Icons.delete_outline_outlined,
                    );
                  },
                ))
          ],
        ),
      ),
    );
  }
}

class TopTitle extends StatelessWidget {
  final String? title;
  const TopTitle({
    Key? key,
    this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15.h,
        ),
        Row(
          children: [
            GestureDetector(
                onTap: () => MagicRouter.pop(),
                child:  Icon(Icons.arrow_back_ios_new,
                color:const Color(0xff9098B1) ,size: 20.sp,)),
            SizedBox(
              width: 10.w,
            ),
            CustomText(
              text:title?? 'Favourite List',
              textStyle: Theme.of(context).textTheme.headline1,
            )
          ],
        ),
      ],
    );
  }
}
