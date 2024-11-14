import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';

class AddPaymentCardScreen extends StatefulWidget {
  const AddPaymentCardScreen({super.key});

  @override
  State<AddPaymentCardScreen> createState() => _AddPaymentCardScreenState();
}

class _AddPaymentCardScreenState extends State<AddPaymentCardScreen> {
  final formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController cardNumberController = TextEditingController();
  final TextEditingController expiryDateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  late PageController _pageController;
  int currentPage = 0;
  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: 0, viewportFraction: 0.88);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Credit/Debit Card'),
      ),
      body: SingleChildScrollView(
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20.h,
              ),
              SizedBox(
                height: 206.h,
                width: double.infinity,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentPage = value;
                    });
                  },
                  itemCount: 2,
                  controller: _pageController,
                  itemBuilder: (context, index) {
                    return PaymentCard(
                      isCurrentPage: index == currentPage,
                    );
                  },
                ),
              ),
              SizedBox(
                height: 24.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Name on Card",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    BuildTextFormField(
                      controller: nameController,
                      hintText: "Alexandra Smith",
                      fillColor: Theme.of(context).colorScheme.inverseSurface,
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your name";
                        }
                        return null;
                      },
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Text(
                      "Card Number",
                      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                            fontWeight: FontWeight.normal,
                          ),
                    ),
                    SizedBox(
                      height: 5.h,
                    ),
                    BuildTextFormField(
                      controller: cardNumberController,
                      hintText: "XXXX XXXX XXXX XXXX",
                      fillColor: Theme.of(context).colorScheme.inverseSurface,
                      suffixIcon: SvgPicture.asset(
                        "assets/icons/master-card.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      textInputAction: TextInputAction.next,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "Please enter your card number";
                        }
                        return null;
                      },
                      textInputType: TextInputType.number,
                      inputFormatters: [
                        LengthLimitingTextInputFormatter(19),
                        CardNumberFormatter(),
                      ],
                    ),
                    SizedBox(
                      height: 16.h,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Expiry Date",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              BuildTextFormField(
                                controller: expiryDateController,
                                hintText: "MM/YY",
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .inverseSurface,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Expiry date is required";
                                  }
                                  return null;
                                },
                                textInputAction: TextInputAction.next,
                                textInputType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(5),
                                  CardExpiryFormatter(),
                                ],
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "CVC",
                                style: Theme.of(context)
                                    .textTheme
                                    .labelLarge
                                    ?.copyWith(
                                      fontWeight: FontWeight.normal,
                                    ),
                              ),
                              SizedBox(
                                height: 5.h,
                              ),
                              BuildTextFormField(
                                controller: cvvController,
                                hintText: "000",
                                fillColor: Theme.of(context)
                                    .colorScheme
                                    .inverseSurface,
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return "Enter CVC";
                                  }
                                  return null;
                                },
                                textInputAction: TextInputAction.done,
                                textInputType: TextInputType.number,
                                inputFormatters: [
                                  LengthLimitingTextInputFormatter(3),
                                ],
                                suffixIcon: const Icon(Icons.credit_card),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 60.h,
                    ),
                    BuildButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.push("/payment-summary");
                        }
                      },
                      buttonWidget: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Continue to Payment"),
                          SizedBox(
                            width: 10.w,
                          ),
                          const Icon(Icons.arrow_forward)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PaymentCard extends StatelessWidget {
  const PaymentCard({super.key, required this.isCurrentPage});
  final bool isCurrentPage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
          margin: EdgeInsets.only(
            right: 8.w,
            left: isCurrentPage ? 0 : 8.w,
            top: isCurrentPage ? 0 : 12.h,
            bottom: isCurrentPage ? 0 : 12.h,
          ),
          height: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.r),
            gradient: const LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [
                Color(0xFFB993D6),
                Color(0xFF8CA6DB),
              ],
            ),
          ),
        ),
        Positioned(
          right: -80,
          bottom: 0,
          top: 0,
          child: ClipPath(
            clipper: CircleClipper(),
            child: Container(
              width: 280.h,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.12),
              ),
            ),
          ),
        ),
        const Positioned(
          top: 26,
          right: 55,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: AppColor.containerRed,
          ),
        ),
        Positioned(
          top: 26,
          right: 36,
          child: CircleAvatar(
            radius: 16,
            backgroundColor: AppColor.brandYellow.withOpacity(0.6),
          ),
        ),
        Positioned(
          bottom: 24,
          right: 36,
          left: 36,
          child: Column(
            children: [
              Text(
                "4747  4747  4747  4747",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
              ),
              SizedBox(
                height: 38.w,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Alexandra Smith".toUpperCase(),
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Text(
                    "07/21".toUpperCase(),
                    style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          color: Colors.white,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
