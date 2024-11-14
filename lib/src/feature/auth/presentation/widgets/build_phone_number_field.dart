import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';

class BuildPhoneNumberField extends StatelessWidget {
  const BuildPhoneNumberField({
    super.key,
    required TextEditingController countryCodeController,
    required TextEditingController phoneController,
    this.inputAction,
  })  : _countryCodeController = countryCodeController,
        _phoneController = phoneController;

  final TextEditingController _countryCodeController;
  final TextEditingController _phoneController;
  final TextInputAction? inputAction;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 52.h,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.inverseSurface,
          borderRadius: BorderRadius.circular(12.r)),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        child: Row(
          children: [
            Icon(
              Icons.phone_outlined,
              color: AppColor.greyStrong,
            ),
            SizedBox(
                width: 60.w,
                child: BuildTextFormField(
                  controller: _countryCodeController,
                  hintText: "+977",
                  customContentPadding: EdgeInsets.symmetric(
                    horizontal: 10.w,
                  ),
                  inputFormatters: [LengthLimitingTextInputFormatter(4)],
                  textInputType: TextInputType.phone,
                  textInputAction: TextInputAction.next,
                )),
            SizedBox(
              width: 2.w,
            ),
            VerticalDivider(
              color: AppColor.greyMedium,
              thickness: 2.w,
              indent: 12,
              endIndent: 12,
            ),
            SizedBox(
              width: 2.w,
            ),
            Expanded(
              child: BuildTextFormField(
                controller: _phoneController,
                hintText: "Phone number",
                customContentPadding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your phone number";
                  }
                  return null;
                },
                inputFormatters: [
                  LengthLimitingTextInputFormatter(10),
                  FilteringTextInputFormatter.digitsOnly,
                ],
                textInputType: TextInputType.number,
                textInputAction: inputAction ?? TextInputAction.next,
              ),
            )
          ],
        ),
      ),
    );
  }
}
