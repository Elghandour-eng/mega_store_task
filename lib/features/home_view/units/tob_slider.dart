part of '../home_view_form.dart';

class _TopSlider extends StatelessWidget {
  const _TopSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController();
    final List<String> imgList = [
      AppImages.home1,
      AppImages.home1,
      AppImages.home1,
      AppImages.home1,
      AppImages.home1,
    ];
    return Column(
      children: [
        SizedBox(
          height: 14.h,
        ),
        SizedBox(
            height: 157.h,
            width: 1.sw,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: PageView.builder(
                  physics: const BouncingScrollPhysics(),
                  controller: controller,
                  allowImplicitScrolling: true,
                  itemCount: imgList.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 2.0),
                      child: SizedBox(
                        height: 139.h,
                        width: 343.w,
                        child: Image.asset(
                          imgList[index],
                          fit: BoxFit.fill,
                        ),
                      ),
                    );
                  }),
            )),
        SizedBox(
          height: 7.h,
        ),
        Row(mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SmoothPageIndicator(
              controller: controller,  // PageController
              count:  imgList.length,
              effect:  ScaleEffect(
                activeDotColor:const Color(0xff50555C) ,
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
