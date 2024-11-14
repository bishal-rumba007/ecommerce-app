import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/constants/app_strings.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/password_management/password_management_bloc.dart';

class ResetPasswordScreen extends StatefulWidget {
  final int userId;
  const ResetPasswordScreen({super.key, required this.userId});

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    final passwordBloc = BlocProvider.of<PasswordManagementBloc>(context);
    return BlocListener<PasswordManagementBloc, PasswordManagementState>(
      listener: (context, state) {
        state.maybeWhen(
          passwordResetFailure: (message) {
            SnackBars.showErrorSnackBar(message);
          },
          passwordResetSuccess: () {
            GoRouter.of(context).go('/password-success');
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
          padding: const EdgeInsets.symmetric(horizontal: 36),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 36,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: SvgPicture.asset("assets/images/set-password.svg"),
                  ),
                  const SizedBox(
                    height: 41,
                  ),
                  Text(
                    AppString.resetPasswordScreenTitle,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppString.resetPasswordScreenSubTitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BuildPasswordTextFormField(
                    controller: _passwordController,
                    hintText: "New Password",
                    validator: (value) {
                      return InputValidator.passwordValidator(value);
                    },
                    textInputAction: TextInputAction.next,
                  ),
                  const SizedBox(
                    height: 20,
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
                  const SizedBox(
                    height: 140,
                  ),
                  BlocBuilder<PasswordManagementBloc, PasswordManagementState>(
                      builder: (context, state) {
                    return state.maybeWhen(
                      loading: () =>
                          const Center(child: CircularProgressIndicator()),
                      orElse: () {
                        return BuildButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              passwordBloc.add(
                                ResetPassword(
                                  userId: widget.userId,
                                  newPassword: _passwordController.text.trim(),
                                  confirmPassword:
                                      _confirmPasswordController.text.trim(),
                                ),
                              );
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
