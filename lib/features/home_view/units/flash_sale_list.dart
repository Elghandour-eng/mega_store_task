part of '../home_view_form.dart';

class _FlashSAleList extends StatelessWidget {
  const _FlashSAleList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260.h,
      child: ListView.builder(
          itemCount: 10,
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return index == 0
                ? SizedBox(
                    width: 16.w,
                  )
                : ProductContainer(index: index,);
          }),
    );
  }
}
