

part of '../add_review.dart';
class SendReview extends StatelessWidget {
  const SendReview({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: 80.h,
        width: 1.sw,
        color: ColorManager.scaffoldBackGroundColor,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 16),
          child: Center(
            child: CustomButton(
              colorBtn: ColorManager.secondButtonColor,
              text: 'Send Review',
              borderRadius: 3.r,
              function: () {},
              textSize: 14.sp,
              hPadding: 16.w,
            ),
          ),
        ),
      ),
    );
  }
}