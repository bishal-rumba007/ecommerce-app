import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class ProductReviewScreen extends StatefulWidget {
  const ProductReviewScreen({super.key});

  @override
  State<ProductReviewScreen> createState() => _ProductReviewScreenState();
}

class _ProductReviewScreenState extends State<ProductReviewScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Reviews & Ratings"),
        ),
        body: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 20.h,
                  ),
                  BuildButton(
                    onPressed: () {
                      context.push("/review");
                    },
                    buttonWidget: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                            "assets/icons/message-dots-circle.svg"),
                        SizedBox(
                          width: 14.w,
                        ),
                        const Text("write a review"),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  ListView.separated(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const CircleAvatar(),
                          SizedBox(
                            width: 20.w,
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Dev kv",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelMedium
                                              ?.copyWith(
                                                fontWeight:
                                                    FontWeight.w600,
                                              ),
                                        ),
                                        Text(
                                          "10 months ago",
                                          style: Theme.of(context)
                                              .textTheme
                                              .labelSmall
                                              ?.copyWith(
                                                color:
                                                    AppColor.greyMedium,
                                              ),
                                        ),
                                      ],
                                    ),
                                    const RatingBadge(rating: 4.4),
                                  ],
                                ),
                                SizedBox(
                                  height: 7.h,
                                ),
                                Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Tincidunt ac nibh turpis ullamcorper. Nulla integer sapien vel massa ultrices. Sit elementum lobortis risus, vel risus at. In eu in nec sollicitudin amet.",
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelMedium
                                      ?.copyWith(
                                        color: AppColor.greyMedium,
                                      ),
                                  maxLines: 5,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.justify,
                                ),
                              ],
                            ),
                          )
                        ],
                      );
                    },
                    separatorBuilder: (_, __) => SizedBox(
                      height: 14.h,
                    ),
                  ),
                  SizedBox(
                    height: 200.h,
                  ),
                ],
              ),
            )));
  }
}
