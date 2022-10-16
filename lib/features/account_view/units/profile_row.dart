part of '../account_view_form.dart';

class _AccountRow extends StatelessWidget {
  final Color? iconColor;
  final IconData? iconData;
  final String? text;
  final Widget? route;
  final Function()? onTap;
  const _AccountRow({
    this.iconData,
    this.text,
    this.iconColor,
    this.route,
    this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: () => route == null ? onTap : MagicRouter.navigateTo(route!),
          child: Row(
            children: [
              Icon(
                iconData ?? Icons.person_outline,
                color: iconColor ?? ColorManager.secondButtonColor,
                size: 28.sp,
              ),
              SizedBox(
                width: 18.w,
              ),
              CustomText(
                text: text ?? 'Profile',
                fontSize: 12.sp,
                fontWeight: FontWeight.w700,
                color: const Color(0xff223263),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 38.h,
        )
      ],
    );
  }
}
