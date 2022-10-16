part of '../product_details_view.dart';
class AddToCartButton extends StatelessWidget {
  final String? title;
  final Widget? route;
  const AddToCartButton({
    Key? key,
    this.title,
    this.route
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
              text: title?? 'Add To Cart',
              borderRadius: 3.r,
              function: () {
                MagicRouter.navigateTo(route??const CartViewForm());
              },
              textSize: 14.sp,
              hPadding: 16.w,
            ),
          ),
        ),
      ),
    );
  }
}