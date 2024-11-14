import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class HelpScreen extends StatelessWidget {
  const HelpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Get Help'),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: Column(
          children: [
            SizedBox(
              height: 30.h,
            ),
            Align(
              alignment: Alignment.center,
              child: Image.asset(
                "assets/images/help.png",
                height: 240.h,
                width: 240.w,
              ),
            ),
            SizedBox(
              height: 32.h,
            ),
            Text(
              "We are here to help so please get in touch with us.",
              style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                    fontSize: 17.sp,
                  ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50.h,
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(24.r),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 10.w),
                child: Column(
                  children: [
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 48.h,
                        width: 48.w,
                        decoration: const BoxDecoration(
                          color: AppColor.primary,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.phone_outlined,
                          color: AppColor.white,
                        ),
                      ),
                      title: const Text("Phone Number"),
                      subtitle: const Text("+91 123456790"),
                      titleTextStyle:
                          Theme.of(context).textTheme.labelMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                      subtitleTextStyle:
                          Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: AppColor.greyMedium,
                              ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    Divider(
                      color: Theme.of(context).colorScheme.inverseSurface,
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    ListTile(
                      contentPadding: EdgeInsets.zero,
                      leading: Container(
                        height: 48.h,
                        width: 48.w,
                        decoration: const BoxDecoration(
                          color: AppColor.primary,
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.email_outlined,
                          color: AppColor.white,
                        ),
                      ),
                      title: const Text("E-mail address"),
                      subtitle: const Text("someone@example.com"),
                      titleTextStyle:
                          Theme.of(context).textTheme.labelMedium?.copyWith(
                                fontWeight: FontWeight.w600,
                              ),
                      subtitleTextStyle:
                          Theme.of(context).textTheme.labelMedium?.copyWith(
                                color: AppColor.greyMedium,
                              ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
