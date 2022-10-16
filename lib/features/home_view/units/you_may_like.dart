part of '../home_view_form.dart';


class _YouMayLike extends StatelessWidget {
  const _YouMayLike({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text: 'You May Like',
                color: const Color(0xff50555C),
                fontWeight: FontWeight.w700,
                fontSize: 14.sp,
              )
            ],
          ),
        ),
        SizedBox(
          height: 7.h,
        ),
        SizedBox(
          height: .7.sh,
          child: GridView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: 4,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, childAspectRatio: .7),
              itemBuilder: (context, index) {
                return ProductContainer(
                  index: index,
                );
              }),
        )
      ],
    );
  }
}
