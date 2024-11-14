import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:go_router/go_router.dart';
import 'package:ecommerce_app/src/core/common/common_export.dart';
import 'package:ecommerce_app/src/core/common/widgets/snackbars.dart';
import 'package:ecommerce_app/src/core/constants/app_strings.dart';
import 'package:ecommerce_app/src/core/utils/utils_export.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/bloc/auth_bloc.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/widgets/facebook_login_button.dart';
import 'package:ecommerce_app/src/feature/auth/presentation/widgets/google_sign_in_button.dart';
import 'package:ecommerce_app/src/services/injection_container.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final isTablet = Responsive.isTablet(context);
    final authBloc = BlocProvider.of<AuthBloc>(context);
    return BlocListener<AuthBloc, AuthState>(
      listener: (ctx, state) {
        state.maybeWhen(
          authenticated: (message) {
            GoRouter.of(context).go('/home');
            SnackBars.showSuccessSnackBar(
              message,
              gravity: ToastGravity.TOP,
            );
          },
          failure: (exception) {
            SnackBars.showErrorSnackBar(exception.message);
          },
          orElse: () {},
        );
      },
      child: Scaffold(
        body: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: SvgPicture.asset("assets/images/star-group-login.svg"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 86),
              child: Align(
                alignment: Alignment.topCenter,
                child: AspectRatio(
                  aspectRatio: isTablet ? 5.4 : 2.4,
                  child: SvgPicture.asset(
                    "assets/icons/logo.svg",
                  ),
                ),
              ),
            ),
            DraggableScrollableSheet(
              maxChildSize: 0.86,
              initialChildSize: 0.66,
              minChildSize: 0.66,
              builder: (context, scrollController) {
                return Container(
                  padding: const EdgeInsets.only(left: 36, top: 36, right: 36),
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.surface,
                    borderRadius:
                        const BorderRadius.vertical(top: Radius.circular(24)),
                  ),
                  child: Form(
                    key: _formKey,
                    child: SingleChildScrollView(
                      controller: scrollController,
                      physics: const NeverScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            AppString.loginScreenTitle,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          Text(
                            AppString.loginScreenSubTitle,
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall
                                ?.copyWith(fontWeight: FontWeight.w500),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          BuildTextFormField(
                            controller: _emailController,
                            hintText: "Email",
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
                            height: 18,
                          ),
                          BuildPasswordTextFormField(
                            controller: _passwordController,
                            hintText: "Password",
                            validator: (value) {
                              if (value!.isEmpty) {
                                return "Please enter your password";
                              }
                              return null;
                            },
                            textInputAction: TextInputAction.done,
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: TextButton(
                              onPressed: () {
                                context.push('/password-recovery');
                              },
                              child: Text(
                                'Forgot Password',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                      fontSize: 12,
                                    ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          BlocBuilder<AuthBloc, AuthState>(
                            builder: (context, state) {
                              return state.maybeWhen(
                                loading: () => const Center(
                                  child: CircularProgressIndicator(),
                                ),
                                orElse: () {
                                  return BuildButton(
                                    onPressed: () {
                                      if (_formKey.currentState!.validate()) {
                                        authBloc.add(
                                          LoginRequested(
                                              email: _emailController.text,
                                              password:
                                                  _passwordController.text),
                                        );
                                      }
                                    },
                                    buttonWidget: const Text("Log In"),
                                  );
                                },
                              );
                            },
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'Don\'t have an account?',
                                style: Theme.of(context)
                                    .textTheme
                                    .labelMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Theme.of(context)
                                            .textTheme
                                            .labelMedium
                                            ?.color
                                            ?.withOpacity(0.8)),
                              ),
                              TextButton(
                                onPressed: () {
                                  context.push('/signup');
                                },
                                child: Text(
                                  'Sign up',
                                  style:
                                      Theme.of(context).textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Or',
                              style: Theme.of(context).textTheme.labelMedium,
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              BlocProvider(
                                create: (_) => sl<AuthBloc>(),
                                child: const GoogleSignInButton(),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              const FacebookLoginButton(),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: AppBar(
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
