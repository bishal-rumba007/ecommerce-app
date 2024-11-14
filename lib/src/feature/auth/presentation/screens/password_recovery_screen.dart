import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/constants/app_strings.dart';
import 'package:ecommerce_app/src/core/theme/colors.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/password_management/password_management_bloc.dart';

class PasswordRecoverScreen extends StatefulWidget {
  const PasswordRecoverScreen({super.key});

  @override
  State<PasswordRecoverScreen> createState() => _PasswordRecoverScreenState();
}

class _PasswordRecoverScreenState extends State<PasswordRecoverScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final passwordBloc = BlocProvider.of<PasswordManagementBloc>(context);
    return BlocListener<PasswordManagementBloc, PasswordManagementState>(
      listener: (context, state) {
        state.maybeWhen(
          forgotPasswordSuccess: () {
            context.push('/password-recovery/verify-otp',
                extra: _emailController.text);
          },
          forgotPasswordFailure: (message) {
            SnackBars.showErrorSnackBar(message);
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
                    height: 16,
                  ),
                  Align(
                    alignment: Alignment.center,
                    child:
                        SvgPicture.asset("assets/images/password-recovery.svg"),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Text(
                    AppString.passwordRecoverScreenTitle,
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    AppString.passwordRecoverScreenSubTitle,
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  BuildTextFormField(
                    controller: _emailController,
                    hintText: "example@gmail.com",
                    customContentPadding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    validator: (value) {
                      return InputValidator.emailValidator(value);
                    },
                    prefixIconWidget: Icon(
                      Icons.email_outlined,
                      color: AppColor.greyStrong,
                    ),
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.emailAddress,
                  ),
                  const SizedBox(
                    height: 120,
                  ),
                  BlocBuilder<PasswordManagementBloc, PasswordManagementState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        loading: () {
                          return const Center(
                            child: CircularProgressIndicator(),
                          );
                        },
                        orElse: () {
                          return BuildButton(
                            onPressed: () {
                              if (_formKey.currentState!.validate()) {
                                passwordBloc.add(
                                  ForgotPassword(
                                    email: _emailController.text.trim(),
                                  ),
                                );
                              }
                            },
                            buttonWidget: const Text("Next"),
                          );
                        },
                      );
                    },
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
