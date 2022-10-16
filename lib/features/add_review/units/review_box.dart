part of '../add_review.dart';


class _RatingBar extends StatelessWidget {
  const _RatingBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(height: 50.h,child:
    RatingBar.builder(

      initialRating: 3,
      minRating: 1,
      direction: Axis.horizontal,
      allowHalfRating: true,
      itemCount: 5,
      itemBuilder: (context, _) => SizedBox(
        height: 3.h,
        width: 3.w,
        child: Icon(
          Icons.star,
          color: Colors.amber,
          size: 3.sp,
        ),
      ),
      onRatingUpdate: (rating) {
      },
    ),);
  }
}
