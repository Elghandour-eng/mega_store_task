part  of'../product_details_view.dart';

class _TopSlider extends StatelessWidget {
  const _TopSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    final List<String> imgList = [
      AppImages.product,
      AppImages.product,
      AppImages.product,
      AppImages.product,
      AppImages.product,
    ];
    return Column(
      children: [
        SizedBox(
          height: 14.h,
        ),
        SizedBox(
            height: 250.h,
            width: 1.sw,
            child:
            PageView.builder(
                physics: const BouncingScrollPhysics(),
                controller: controller,
                allowImplicitScrolling: true,
                itemCount: imgList.length,
                itemBuilder: (context, index) {
                  return
                    Image.asset(
                      imgList[index],
                      fit: BoxFit.fill,
                    );
                })),
        SizedBox(
          height: 7.h,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SmoothPageIndicator(
                controller: controller,  // PageController
                count:  imgList.length,
                effect:  ScaleEffect(
                    activeDotColor:const Color(0xffED1C24) ,
                    scale: 1,
                    dotColor:const Color(0xff979797)  ,
                    dotWidth: 8.w,
                    dotHeight: 8.h
                ),  // your preferred effect
                onDotClicked: (index){

                }
            )
          ],)
      ],
    );
  }
}
