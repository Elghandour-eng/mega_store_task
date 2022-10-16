

part of'../product_details_view.dart';
class _CommonProducts extends StatelessWidget {
  const _CommonProducts({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(text: 'You Might Also Like',
                fontSize: 16.sp,color: ColorManager.textColor2,),

            ],
          ),
        ),
        SizedBox(
          height: 20.h,
        ),
        SizedBox(
          height: 300.h,
          width: 1.sw,
          child: ListView.builder(
              itemCount:8 ,
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index)
              {
                return
                  index==0?SizedBox(width: 16.w,):
                  ProductContainer(index: index,);
              }),
        ),
      ],
    );
  }
}
