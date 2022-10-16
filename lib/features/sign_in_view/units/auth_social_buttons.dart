part of'../sign_in_form.dart';


class _AuthSocialButtons extends StatelessWidget {
  const _AuthSocialButtons({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 21.h,
        ),
        CustomButton(
          function: () {},
          text: "Login with Google",
          haveICon: true,
          iconWidget: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(AppImages.google,height: 20.h,width: 13.w,fit: BoxFit.fill,),
          ),
          borderColor: Colors.grey.shade400.withOpacity(.9),
          colorBtn: ColorManager.scaffoldBackGroundColor,
          textColor: const Color(0xff9098B1),
        ),
        const SizedBox(
          height: 5,
        ),
        CustomButton(
          function: () {},
          haveICon: true,
          iconWidget: Padding(
            padding: const EdgeInsets.all(5.0),
            child: SvgPicture.asset(AppImages.facebook,height: 20.h,width: 13.w,fit: BoxFit.fill,),
          ),
          text: "Login with facebook",
          borderColor: Colors.grey.shade400.withOpacity(.9),
          colorBtn: ColorManager.scaffoldBackGroundColor,
          textColor: const Color(0xff9098B1),
        ),
        SizedBox(
          height: 33.h,
        ),
      ],
    );
  }
}
