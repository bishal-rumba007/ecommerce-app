import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/constants/app_strings.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/password_management/password_management_bloc.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/widgets/otp_field.dart';

class ForgotPasswordOTPVerificationScreen extends StatefulWidget {
  final String message;
  const ForgotPasswordOTPVerificationScreen({super.key, required this.message});

  @override
  State<ForgotPasswordOTPVerificationScreen> createState() =>
      _ForgotPasswordOTPVerificationScreenState();
}

class _ForgotPasswordOTPVerificationScreenState
    extends State<ForgotPasswordOTPVerificationScreen> {
  final int _resendDuration = 2;

  /// <---- Resend duration in minutes
  Timer? _timer;
  int countdown = 0;
  bool hasCountdownFinish = false;

  String _otp = "";

  final List<TextEditingController> _controllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());

  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  void _startTimer() {
    countdown = _resendDuration * 60;
    _timer = Timer.periodic(const Duration(seconds: 1), (_) {
      setState(() {
        if (countdown > 0) {
          countdown--;
        } else {
          _timer?.cancel();
          hasCountdownFinish = true;
        }
      });
    });
  }

  String _formatDuration(int duration) {
    if (duration == 0) {
      return '2:00';
    }
    final minutes = (duration / 60).floor();
    final seconds = duration % 60;
    final paddedMinutes = minutes.toString().padLeft(2, '0');
    final paddedSeconds = seconds.toString().padLeft(2, '0');
    return '$paddedMinutes:$paddedSeconds';
  }

  @override
  Widget build(BuildContext context) {
    final passwordBloc = BlocProvider.of<PasswordManagementBloc>(context);
    return BlocListener<PasswordManagementBloc, PasswordManagementState>(
      listener: (context, state) {
        state.maybeWhen(
          otpResendFailure: (exception) {
            SnackBars.showErrorSnackBar(exception);
          },
          otpResendSuccess: () {
            _startTimer();
            hasCountdownFinish = false;
            SnackBars.showSuccessSnackBar('OTP sent successfully');
          },
          otpVerificationFailure: (exception) {
            SnackBars.showErrorSnackBar(exception);
          },
          otpVerificationSuccess: (message) {
            context.push(
              '/reset-password',
              extra: int.parse(message),
            );
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 36,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset("assets/images/otp.svg"),
                ),
                const SizedBox(
                  height: 50,
                ),
                Text(
                  AppString.otpScreenTitle,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  AppString.otpScreenSubTitle,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(
                  height: 5,
                ),
                Text(
                  hideCharacter(widget.message),
                  style: Theme.of(context).textTheme.bodySmall?.copyWith(
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    4,
                    (index) => SizedBox(
                      width: 67,
                      height: 67,
                      child: BuildOTPField(
                        controller: _controllers[index],
                        focusNode: _focusNodes[index],
                        textInputType: TextInputType.number,
                        alignText: TextAlign.center,
                        onChanged: (value) {
                          if (value.isNotEmpty) {
                            if (index < 3) {
                              _focusNodes[index + 1].requestFocus();
                            } else {
                              _focusNodes[index].unfocus();
                            }
                          } else {
                            FocusScope.of(context).previousFocus();
                          }
                          // Update the OTP value only if it has changed
                          final newOtp = _controllers
                              .map((controller) => controller.text)
                              .join();
                          if (newOtp != _otp) {
                            setState(() {
                              _otp = newOtp;
                            });
                          }
                        },
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                hasCountdownFinish
                    ? const SizedBox(
                        height: 5,
                      )
                    : Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 5.0),
                          child: RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'Resend code in: ',
                                  style: Theme.of(context).textTheme.bodySmall),
                              TextSpan(
                                text: _formatDuration(countdown),
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall
                                    ?.copyWith(
                                      fontWeight: FontWeight.w600,
                                    ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                const SizedBox(
                  height: 120,
                ),
                _buildButton(passwordBloc),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildButton(PasswordManagementBloc passwordBloc) {
    return BlocBuilder<PasswordManagementBloc, PasswordManagementState>(
      builder: (context, state) {
        return state.maybeWhen(
          loading: () => const Center(
            child: CircularProgressIndicator(),
          ),
          orElse: () {
            return Row(
              children: [
                Expanded(
                    child: BuildOutlinedButton(
                  onPressed: hasCountdownFinish
                      ? () {
                          if (hasCountdownFinish) {
                            passwordBloc.add(
                              ForgotPassword(
                                email: widget.message,
                              ),
                            );
                          }
                        }
                      : null,
                  buttonWidget: const Text('Resend'),
                )),
                const SizedBox(
                  width: 20,
                ),
                Expanded(
                    child: BuildButton(
                  onPressed: _otp.length < 4
                      ? null
                      : () {
                          passwordBloc.add(VerifyOtp(otpCode: _otp));
                        },
                  buttonWidget: const Text('Confirm'),
                )),
              ],
            );
          },
        );
      },
    );
  }

  String hideCharacter(String phoneNumber) {
    return phoneNumber.replaceRange(1, phoneNumber.length - 5, '******');
  }

  @override
  void dispose() {
    _timer?.cancel();
    for (var controller in _controllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }
}
