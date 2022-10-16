part of '../home_view_form.dart';

class _SearchAndCart extends StatelessWidget {
  const _SearchAndCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 22.h,
        ),
        SizedBox(
          height: 50.h,
          width: 1.sw,
          child: Row(
            children: [
              SizedBox(
                width: 32.w,
              ),
              InkWell(
                onTap: () => MagicRouter.navigateTo(const EmptySearchView()),
                child: CustomTextField(
                  onTab: () => MagicRouter.navigateTo(const EmptySearchView()),
                  textFieldWidth: 263.w,
                  hintText: "Search Product",
                  prefixIcon: InkWell(
                    onTap: () => MagicRouter.navigateTo(const EmptySearchView()),
                    child: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                  ),
                  borderColor: Colors.transparent,
                  filledColor: const Color(0xffE5E5E5),
                  borderRadius: 3,
                  readOnly: true,
                ),
              ),
              SizedBox(
                width: 20.w,
              ),
              Badge(
                position: BadgePosition(top: -17.h, end: -5.w),
                badgeColor: Colors.red.withOpacity(.8),
                badgeContent: CustomText(
                  text: '2',
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w400,
                ),
                child: GestureDetector(
                  onTap: (){
                    MagicRouter.navigateTo(const CartViewForm());
                  },
                  child: Icon(
                    Icons.shopping_cart_outlined,
                    color: Colors.grey,
                    size: 30.sp,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
