

part  of'../product_details_view.dart';

class _ProductTitle extends StatelessWidget {
  const _ProductTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: .8.sw,
              child:
              Column(
                children: [

                  SizedBox(
                    width: 1.sw,
                    child: CustomText(
                      text: 'Product Name will dispaly',
                      color: ColorManager.textColor2,
                      fontSize: 18.sp,
                      align: TextAlign.start,

                    ),
                  ),
                  SizedBox(
                    width: 1.sw,
                    child: CustomText(
                      text: 'here      ',
                      color: ColorManager.textColor2,
                      fontSize: 18.sp,
                      align: TextAlign.start,

                    ),
                  ),

                ],
              ),

            ),

            const Icon(Icons.favorite_border)

          ],
        ),


      ],
    );
  }
}
