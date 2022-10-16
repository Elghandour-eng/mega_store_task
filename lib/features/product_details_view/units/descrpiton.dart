

part  of '../product_details_view.dart';

class _Descrption extends StatelessWidget {
  const _Descrption({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            CustomText(text: 'Details',color: ColorManager.secondButtonColor,fontWeight: FontWeight.w500,fontSize: 17.sp,),
          ],
        ),
        SizedBox(height: 12.h,),
        SizedBox(height:88.h ,
          child: CustomText(
            text: 'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.'
            ,fontSize: 12.sp,fontWeight: FontWeight.w400,
            color:const Color(0xff9098B1) ,
          ),
        )
      ],
    );
  }
}
