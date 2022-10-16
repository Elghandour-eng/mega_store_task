part of '../home_view_form.dart';

class _SecondSlider extends StatelessWidget {
  const _SecondSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: SizedBox(
            height: 86.h,
            child: Image.asset(
              AppImages.home2,
              fit: BoxFit.fill,
            ),
          ),
        ),
        SizedBox(
          height: 13.h,
        ),
      ],
    );
  }
}
