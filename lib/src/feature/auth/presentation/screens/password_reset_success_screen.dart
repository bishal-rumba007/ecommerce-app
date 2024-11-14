import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/widgets/build_button.dart';
import 'package:ecommerce_app/src/core/constants/app_strings.dart';

class ResetPasswordSuccessScreen extends StatelessWidget {
  const ResetPasswordSuccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 31),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 110,
            ),
            Align(
              alignment: Alignment.center,
              child:
                  SvgPicture.asset("assets/images/reset_password_success.svg"),
            ),
            const SizedBox(
              height: 66,
            ),
            Text(
              AppString.resetPasswordSuccessTitle,
              style: Theme.of(context).textTheme.bodyLarge,
              textAlign: TextAlign.center,
            ),
            const Spacer(),
            BuildButton(
              onPressed: () {
                context.go('/login');
              },
              buttonWidget: const Text("Log In"),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
