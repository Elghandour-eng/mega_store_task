part of '../view.dart';

class _BottomBar extends StatelessWidget {
  const _BottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomeCubit, HomeStates>(
      listener: (_, s) {},
      builder: (context, state) => Container(
        height: 93.h,
        decoration: BoxDecoration(
            color: Colors.transparent,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.1),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3), // changes position of shadow
              ),
            ],
            borderRadius: const BorderRadius.only(
                topRight: Radius.circular(0), topLeft: Radius.circular(0))),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(0), topLeft: Radius.circular(0)),
          child: BottomNavigationBar(
              currentIndex: HomeCubit.get(context).currentIndex,
              backgroundColor: Colors.transparent,
              onTap: (i) {
                HomeCubit.get(context).changeBottom(i);
              },
              selectedItemColor: const Color(0xff50555C),
              selectedFontSize: 10.sp,
              unselectedItemColor: const Color(0xff9098B1),
              unselectedLabelStyle: const TextStyle(color: Color(0xff9098B1)),
              unselectedFontSize: 10.sp,
              items:  [
                BottomNavigationBarItem(
                    icon: Column(
                      children: [
                         Icon(
                          Icons.home_outlined,
                          size: 28.sp,
                        ),
                        CustomText(text: "Home",textStyle: TextStyle(color:
                        HomeCubit.get(context).currentIndex==0? const Color(0xff50555C):
                        const Color(0xff9098B1),fontSize: 10.sp),)
                      ],
                    ),
                    label: ''),
                // BottomNavigationBarItem(
                //     icon: buildColumn(context, AppImages.books, 1), label: ''),
                BottomNavigationBarItem(
                    icon: Column(
                      children: [
                         Icon(Icons.person_outline,size: 28.sp,),
                        CustomText(text: "Account",textStyle: TextStyle(color:
                        HomeCubit.get(context).currentIndex==1? const Color(0xff50555C):
                        const Color(0xff9098B1),fontSize: 10.sp),)
                      ],
                    ), label: ''),
                BottomNavigationBarItem(
                    icon: Column(
                      children: [
                         Icon(Icons.local_offer_outlined,size: 28.sp,),
                        CustomText(text: "Offers",textStyle: TextStyle(color:
                        HomeCubit.get(context).currentIndex==2? const Color(0xff50555C):
                        const Color(0xff9098B1),fontSize: 10.sp),)
                      ],
                    ), label: ''),
                BottomNavigationBarItem(
                    icon: Column(
                      children: [
                         Icon(Icons.favorite_border,size: 28.sp,),
                        CustomText(text: "Favourites",textStyle: TextStyle(color:
                        HomeCubit.get(context).currentIndex==3? const Color(0xff50555C):
                        const Color(0xff9098B1),fontSize: 10.sp),)
                      ],
                    ), label: ''),
              ]),
        ),
      ),
    );
  }


}
