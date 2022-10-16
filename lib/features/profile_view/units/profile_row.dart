part of'../profile_view.dart';



Widget accountRow({BuildContext? context,void Function()? onTap,bool? haveSecondTitle,IconData? iconData, Color? iconColor,
Widget? route ,String? text, String? secondTitle}){
  return
    Row(
      children: [
        Column(

          children: [
            InkWell(
              onTap: () => route == null ? onTap : MagicRouter.navigateTo(route),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w),
                child: Row(
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: Icon(
                        iconData ?? Icons.person_outline,
                        color: iconColor ?? ColorManager.secondButtonColor,
                        size: 28.sp,
                      ),
                    ),
                    SizedBox(
                      width: 18.w,
                    ),
                    InkWell(
                      onTap: onTap,
                      child: SizedBox(
                        width: 125.w,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            CustomText(
                              text: text ?? 'Profile',
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w700,
                              color: const Color(0xff223263),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(width: 22.w,),
                    haveSecondTitle??true ?Row(
                      children: [
                        SizedBox(
                          width: 100.w,
                          child: CustomText(text: secondTitle??'rex4dom@.com',
                            fontSize: 10.sp,color:const Color(0xff9098B1),),
                        ),
                        SizedBox(width: 15.w,),
                        Icon(Icons.arrow_forward_ios,
                          color:const Color(0xff9098B1),size: 18.sp,),
                        SizedBox(width: 15.w,)
                      ],
                    ):const SizedBox()
                  ],
                ),
              ),
            ),
            SizedBox(height: 36.h,)
          ],
        ),

      ],
    );
}