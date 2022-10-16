

part of '../all_review_view.dart';
class AddReview extends StatelessWidget {
  const AddReview({
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
              text: 'Add Review',
              borderRadius: 3.r,
              function: () {MagicRouter.navigateTo(const AddReviewViewForm());},
              textSize: 14.sp,
              hPadding: 16.w,
            ),
          ),
        ),
      ),
    );
  }
}