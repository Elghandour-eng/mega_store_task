part of '../home_view_form.dart';

class _FlashSale extends StatelessWidget {
  const _FlashSale({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [
          CustomText(
            text: 'Flash Sale',
          ),
        ],
      ),
    );
  }
}
