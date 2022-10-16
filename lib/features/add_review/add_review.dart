import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mega_store_task/features/favourites_view/favourites_view_form.dart';
import 'package:mega_store_task/widgets/custom_text_field.dart';
import 'package:mega_store_task/widgets/pop_scaffold.dart';

import '../../core/color_manager/color_manager.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_widget.dart';
import '../al_reviews_view/all_review_view.dart';
part 'units/review_box.dart';
part 'units/send_review.dart';



class AddReviewViewForm extends StatelessWidget {
  const AddReviewViewForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.w),                child: const TopTitle(
                title: "Write Review",
              ),
              ),
              Expanded(child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 28.h,
                    ),
                    SizedBox(width: 1.sw,height: 2.h,
                      child: Divider(thickness: 1.h,color: Colors.grey.shade300,),),
                    SizedBox(height: 20.h,),
                    SizedBox(height: 50.h,
                      child:const CustomText(
                        text: 'Please write Overall level of satisfaction with your shipping / Delivery Services',
                        color: ColorManager.textColor2, ),),
                    SizedBox(height: 22.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children:const [
                          _RatingBar(),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.h,),
                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.w),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: 50.h,
                            child:const CustomText(
                              text: 'Write Your Review',
                              color: ColorManager.textColor2, ),),
                        ],
                      ),
                    ),
                    SizedBox(height: 22.h,),

                    Padding(
                      padding:  EdgeInsets.symmetric(horizontal: 16.w),
                      child: CustomTextField(
                        borderRadius: 10.r,
                        hintText: 'write your review here',
                        lines: 10,

                      ),
                    ),
                    SizedBox(height: 80.h,)
                  ],
                ),
              ))


            ],
          ),
          const SendReview(),
        ],
      ),
    );
  }
}
