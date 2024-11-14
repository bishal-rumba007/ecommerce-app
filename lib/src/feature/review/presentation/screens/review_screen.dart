import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  TextEditingController reviewController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Reviews & Ratings"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(24.r),
                  ),
                  child: Row(
                    children: [
                      Container(
                        height: 88.h,
                        width: 88.w,
                        decoration: BoxDecoration(
                          color: Colors.grey.shade300,
                          borderRadius: BorderRadius.circular(20.r),
                        ),
                      ),
                      SizedBox(
                        width: 14.w,
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "LIPSY LONDON",
                              style: Theme.of(context).textTheme.labelSmall,
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Text(
                              "Lorem ipsum dolor sit amet, con oremsit amet, con orem",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall
                                  ?.copyWith(
                                    fontWeight: FontWeight.w600,
                                  ),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                            SizedBox(
                              height: 6.h,
                            ),
                            RatingBar.builder(
                              initialRating: 0,
                              minRating: 1,
                              direction: Axis.horizontal,
                              allowHalfRating: true,
                              itemCount: 5,
                              itemBuilder: (context, _) => const Icon(
                                Icons.star_rounded,
                                color: Colors.amber,
                              ),
                              onRatingUpdate: (rating) {},
                              itemSize: 22,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Container(
                  width: double.infinity,
                  padding: EdgeInsets.all(10.w),
                  decoration: BoxDecoration(
                    color: Theme.of(context).cardColor,
                    borderRadius: BorderRadius.circular(16.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Resellers find images and videos more helpful than text alone.",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Text(
                        "Add Images/Vidies",
                        style: Theme.of(context).textTheme.bodySmall?.copyWith(
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      SizedBox(
                        height: 13.h,
                      ),
                      Container(
                        height: 56.h,
                        width: 56.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4.r),
                          border: Border.all(),
                        ),
                        child: Icon(
                          Icons.add,
                          color: AppColor.greyMedium,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                Text(
                  "Write a review",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(
                  height: 8.h,
                ),
                BuildTextFormField(
                  controller: reviewController,
                  maxLine: 5,
                  hintText:
                      "How is the product? What do you like? What do you hate?",
                  fillColor: AppColor.greySemiLight,
                ),
                SizedBox(
                  height: 200.h,
                ),
                BuildButton(
                  onPressed: () {},
                  buttonWidget: const Text(
                    "Submit Review",
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}


//
// class DashedBorderPainter extends CustomPainter{
//
//   final Color? color;
//   final double strokeWidth;
//   final double gap;
//
//   DashedBorderPainter({this.color, required this.strokeWidth, required this.gap});
//
//   @override
//   void paint(Canvas canvas, Size size) {
//     var dashWidth = 5.0;
//     final Paint paint = Paint()
//       ..color = color ?? AppColor.greyMedium
//       ..strokeWidth = strokeWidth
//       ..style = PaintingStyle.stroke;
//
//     var max = 2 * size.width + 2 * size.height;
//     var dashSpace = 5.6;
//     var start = 0.0;
//
//     double dashHeight = 0;
//     while(start < max){
//       final dashPattern = [strokeWidth, gap];
//       if(dashHeight % 2 == 0){
//         canvas.drawLine(Offset(0, start), Offset(0, start + dashWidth), paint);
//       }
//       start += dashWidth + dashSpace;
//       dashHeight++;
//     }
//
//     final Path path = Path();
//     for(double i = 0; i < size.width; i += gap){
//       path.moveTo(i, 0);
//       path.lineTo(i + gap, 0);
//     }
//     canvas.drawPath(path, paint);
//   }
//
//   @override
//   bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
//
// }
