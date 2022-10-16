
part of'../product_details_view.dart';

class _ReviewBox extends StatelessWidget {
  const _ReviewBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200.h,
      width: 1.sw,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 30.r,
                backgroundImage: const NetworkImage(
                    'https://images.unsplash.com/photo-1540569014015-19a7be504e3a?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=435&q=80'),
              ),
              SizedBox(
                width: 8.w,
              ),
              Column(
                children: [
                  CustomText(
                    text: 'James Lowsen',
                    fontSize: 16.sp,
                    color: ColorManager.textColor2,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        height: 40.h,
                        width: .35.sw,
                        child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: 5,
                            itemBuilder: (context, index) {
                              return Icon(
                                Icons.star,
                                color: index != 4
                                    ? Colors.amber
                                    : Colors.grey,
                                size: 20.sp,
                              );
                            }),
                      ),
                    ],
                  ),
                ],
              )
            ],
          ),
          SizedBox(
            height: 80.h,
            child: CustomText(
              text:
              'air max are always very comfortable fit, clean and just perfect in every way. just the box was too small and scrunched the sneakers up a little bit, not sure if the box was always this small but the 90s are and will always be one of my favorites.',
              color: Colors.grey.shade500,
              fontSize: 12.sp,
              fontWeight: FontWeight.w200,
            ),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomText(
                text:'December 10, 2016',
                color: Colors.grey.shade500,
                fontSize: 12.sp,
                fontWeight: FontWeight.w200,
              ),
            ],
          ),

        ],
      ),
    );
  }
}
