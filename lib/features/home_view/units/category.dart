part of '../home_view_form.dart';

class _CategoryList extends StatelessWidget {
  const _CategoryList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 135.h,
      child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: 10,
          itemBuilder: (context, index) {
            return index == 0
                ? SizedBox(
                    width: 16.w,
                  )
                : Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: GestureDetector(
                      onTap: ()=>MagicRouter.navigateTo(const CategoryViewForm()),
                      child:CategoryWidget(index: index,),
                    ),
                  );
          }),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final int? index;
  const CategoryWidget({
    Key? key,
    this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          backgroundColor: Colors.grey,
          radius: 38.r,
          backgroundImage: AssetImage(index! % 2 == 0
              ? AppImages.category1
              : AppImages.category2),
        ),
        SizedBox(
          height: 4.h,
        ),
        CustomText(
          text: 'Category \n name',
          fontSize: 10.sp,
          fontWeight: FontWeight.w400,
          color: const Color(0xff50555C),
        )
      ],
    );
  }
}
