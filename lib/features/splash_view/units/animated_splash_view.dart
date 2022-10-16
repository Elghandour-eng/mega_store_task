part of '../splash_view_form.dart';

class _AnimatedSplash extends StatefulWidget {
  const _AnimatedSplash({Key? key}) : super(key: key);

  @override
  State<_AnimatedSplash> createState() => _AnimatedSplashState();
}

class _AnimatedSplashState extends State<_AnimatedSplash> {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SizedBox(
            width:1.sw,
            height: 1.sh,
            child: AnimatedSplashScreen(
              centered: true,
              duration: 2000,
              splash: Padding(
                padding: const EdgeInsets.only(left: 31),
                child: Image.asset(
                  AppImages.logo,
                  height: 100.h,
                  width: 354.w,
                  fit: BoxFit.fill,
                ),
              ),
              nextScreen:const SignInForm() ,
              splashTransition: SplashTransition.fadeTransition,
              backgroundColor: ColorManager.scaffoldBackGroundColor,
            ),
          ),
        ),
      ),
    );
  }
}
