import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/constants/app_strings.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/profile/domain/usecases/change_password_usecase.dart';
import 'package:ecommerce_app/src/feature/profile/presentation/bloc/profile_bloc.dart';

class ChangePasswordScreen extends StatefulWidget {
  final String currentPassword;
  const ChangePasswordScreen({super.key, required this.currentPassword});

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BlocListener<ProfileBloc, ProfileState>(
      listener: (context, state) {
        state.maybeWhen(
          failure: (message) {
            SnackBars.showErrorSnackBar(message);
          },
          success: (message) {
            SnackBars.showSuccessSnackBar(
              message,
              gravity: ToastGravity.CENTER,
            );
            GoRouter.of(context).go('/home');
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          backgroundColor: Theme.of(context).colorScheme.surface,
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 36.w),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 36.h,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset("assets/images/set-password.svg"),
                  ),
                  SizedBox(
                    height: 41.h,
                  ),
                  Text(
                    AppString.resetPasswordScreenTitle,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  SizedBox(
                    height: 10.h,
                  ),
                  Text(
                    AppString.resetPasswordScreenSubTitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  BuildPasswordTextFormField(
                    controller: _passwordController,
                    hintText: "New Password",
                    validator: (value) {
                      return InputValidator.passwordValidator(value);
                    },
                    textInputAction: TextInputAction.next,
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  BuildPasswordTextFormField(
                    controller: _confirmPasswordController,
                    hintText: "Confirm Password",
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter password again";
                      } else if (_passwordController.text !=
                          _confirmPasswordController.text) {
                        return "Password does not match";
                      }
                      return null;
                    },
                    textInputAction: TextInputAction.done,
                  ),
                  SizedBox(
                    height: 140.h,
                  ),
                  BlocBuilder<ProfileBloc, ProfileState>(
                      builder: (context, state) {
                    return state.maybeWhen(
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      orElse: () {
                        return BuildButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              context.read<ProfileBloc>().add(UpdatePassword(
                                    params: ChangePasswordParams(
                                      oldPassword: widget.currentPassword,
                                      newPassword: _passwordController.text,
                                      confirmPassword:
                                          _confirmPasswordController.text,
                                    ),
                                  ));
                            }
                          },
                          buttonWidget: const Text("Change Password"),
                        );
                      },
                    );
                  }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
