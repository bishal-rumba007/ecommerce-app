import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';

class CurrentPasswordScreen extends StatefulWidget {
  const CurrentPasswordScreen({super.key});

  @override
  State<CurrentPasswordScreen> createState() => _CurrentPasswordScreenState();
}

class _CurrentPasswordScreenState extends State<CurrentPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _currentPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 36.w),
        child: SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset("assets/images/wonder.svg"),
                ),
                SizedBox(
                  height: 30.h,
                ),
                Text(
                  "Current Password",
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Text(
                  "Enter your current password to change your password",
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                SizedBox(
                  height: 30.h,
                ),
                BuildPasswordTextFormField(
                  controller: _currentPasswordController,
                  hintText: "Password",
                  fillColor: Theme.of(context).colorScheme.inverseSurface,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter your password";
                    }
                    return null;
                  },
                ),
                SizedBox(
                  height: 280.h,
                ),
                BuildButton(
                  buttonWidget: const Text("Next"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      context.push(
                        '/change-password',
                        extra: _currentPasswordController.text,
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
