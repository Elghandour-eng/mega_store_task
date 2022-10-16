part of'../product_details_view.dart';
class _ReviewDetails extends StatelessWidget {
  const _ReviewDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(width: .4.sw,
              child:
              SizedBox(
                width: 1.sw,
                child: CustomText(
                  text: 'Review Product',
                  color: ColorManager.textColor2,
                  fontSize: 15.sp,
                  align: TextAlign.start,

                ),
              ),

            ),

            InkWell(
              onTap: ()=>MagicRouter.navigateTo(const AllREviewsViewForm()),
              child: CustomText(text: 'See More',
                textStyle: Theme.of(context).textTheme.headline4,),
            )

          ],
        ),
        Row(
          children: [
            SizedBox(
              height: 40.h,
              width: .35.sw,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 5,
                  itemBuilder: (context,index)
                  {
                    return Icon(Icons.star,color:
                    index!=4?Colors.amber:Colors.grey,);
                  }),
            ),
            CustomText(text: '4.5  (30 Reviews)',fontSize: 10.sp,
              color: Colors.grey.shade500,)
          ],
        )
      ],
    );
  }
}
