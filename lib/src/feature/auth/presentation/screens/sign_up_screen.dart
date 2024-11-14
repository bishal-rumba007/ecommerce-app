import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/constants/app_strings.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  /// boolean variable to check if privacy policy is clicked or not
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: SvgPicture.asset("assets/images/star-group-signup.svg"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 80),
            child: AspectRatio(
              aspectRatio: isTablet ? 5 : 2.1,
              child: SvgPicture.asset(
                "assets/icons/logo.svg",
              ),
            ),
          ),
          DraggableScrollableSheet(
            maxChildSize: 0.71,
            initialChildSize: 0.71,
            minChildSize: 0.71,
            builder: (context, scrollController) {
              return Container(
                padding: const EdgeInsets.only(left: 36, top: 26, right: 36),
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.surface,
                  borderRadius:
                      const BorderRadius.vertical(top: Radius.circular(24)),
                ),
                child: Form(
                  key: _formKey,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    physics: const ClampingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          AppString.signUpScreenTitle,
                          style: Theme.of(context).textTheme.titleLarge,
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          AppString.signUpScreenSubTitle,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall
                              ?.copyWith(fontWeight: FontWeight.w500),
                        ),
                        const SizedBox(
                          height: 18,
                        ),
                        BuildTextFormField(
                          controller: _emailController,
                          hintText: "Email ID",
                          prefixIconWidget: const Padding(
                            padding: EdgeInsets.only(top: 3),
                            child: Icon(
                              Icons.mail_outline_rounded,
                            ),
                          ),
                          validator: (value) {
                            return InputValidator.emailValidator(value);
                          },
                          textInputType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        BuildTextFormField(
                          controller: _phoneController,
                          hintText: "+977   | ",
                          customContentPadding: const EdgeInsets.symmetric(
                            horizontal: 10,
                          ),
                          validator: (value) {
                            return InputValidator.phoneValidator(value);
                          },
                          prefixIconWidget: Icon(
                            Icons.phone_outlined,
                            color: AppColor.greyStrong,
                          ),
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(14),
                            FilteringTextInputFormatter.digitsOnly,
                          ],
                          textInputType: TextInputType.phone,
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        BuildPasswordTextFormField(
                          controller: _passwordController,
                          hintText: "Password",
                          validator: (value) {
                            return InputValidator.passwordValidator(value);
                          },
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        BuildPasswordTextFormField(
                          controller: _confirmPasswordController,
                          hintText: "Confirm Password",
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "Please enter your password";
                            } else if (_passwordController.text !=
                                _confirmPasswordController.text) {
                              return "Password does not match";
                            }
                            return null;
                          },
                          textInputAction: TextInputAction.done,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        _buildPrivacyPolicyRow(context),
                        const SizedBox(
                          height: 30,
                        ),
                        BuildButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              if (_isChecked) {
                                context.push(
                                  '/profile-setup',
                                  extra: <String, dynamic>{
                                    'email': _emailController.text,
                                    'phone': _phoneController.text,
                                    'password': _passwordController.text,
                                    'password2':
                                        _confirmPasswordController.text,
                                  },
                                );
                              } else {
                                SnackBars.showWarningSnackBar(
                                  'You must agree Privacy Policy to continue.',
                                );
                              }
                            }
                          },
                          buttonWidget: const Text("Continue"),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        _buildLoginRouteRow(context),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Row _buildPrivacyPolicyRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            _isChecked = !_isChecked;
            setState(() {});
          },
          materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
          visualDensity: const VisualDensity(horizontal: -4, vertical: -4),
          activeColor: AppColor.primary,
          checkColor: Colors.white,
          side: const BorderSide(color: AppColor.black, width: 1.4),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        const SizedBox(
          width: 11,
        ),
        Expanded(
            child: InkWell(
          onTap: () {},
          child: RichText(
            text: TextSpan(children: [
              TextSpan(
                text: "I agree with the ",
                style: Theme.of(context).textTheme.labelMedium,
              ),
              TextSpan(
                text: "Terms of service & Privacy ",
                style: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(fontWeight: FontWeight.w600),
              ),
              TextSpan(
                text: "policy",
                style: Theme.of(context).textTheme.labelMedium,
              ),
            ]),
          ),
        )),
      ],
    );
  }

  Row _buildLoginRouteRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
              fontWeight: FontWeight.w400,
              color: Theme.of(context)
                  .textTheme
                  .labelMedium
                  ?.color
                  ?.withOpacity(0.8)),
        ),
        TextButton(
          onPressed: () {
            context.go('/login');
          },
          child: Text(
            'Log in',
            style: Theme.of(context).textTheme.labelMedium,
          ),
        ),
      ],
    );
  }
}
